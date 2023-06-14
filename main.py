from machine import Pin
from machine import Timer
from time import sleep_ms
import ubluetooth
import dht
import network
import urequests
import wifi_credentials

ble_msg = ""
activo = True
d = dht.DHT11(Pin(23))
mi_1 = Pin(12, Pin.OUT)
mi_2 = Pin(13, Pin.OUT)
md_1 = Pin(25, Pin.OUT)
md_2 = Pin(26, Pin.OUT)
led_r = Pin(18, Pin.OUT)
led_v = Pin(19, Pin.OUT)

class ESP32_BLE():
    def __init__(self, name):
        # Create internal objects for the onboard LED
        # blinking when no BLE device is connected
        # stable ON when connected
        self.led = Pin(2, Pin.OUT)
        self.timer1 = Timer(0)
        
        self.name = name
        self.ble = ubluetooth.BLE()
        self.ble.active(True)
        self.disconnected()
        self.ble.irq(self.ble_irq)
        self.register()
        self.advertiser()

    def connected(self):
        print('conectado')
        self.led.value(0)
        self.timer1.deinit()

    def disconnected(self):
        print('desconectado')
        self.timer1.init(period=100, mode=Timer.PERIODIC, callback=lambda t: self.led.value(not self.led.value()))

    def ble_irq(self, event, data):
        global ble_msg
        
        if event == 1: #_IRQ_CENTRAL_CONNECT:
                       # A central has connected to this peripheral
            self.connected()

        elif event == 2: #_IRQ_CENTRAL_DISCONNECT:
                         # A central has disconnected from this peripheral.
            self.advertiser()
            self.disconnected()
        
        elif event == 3: #_IRQ_GATTS_WRITE:
                         # A client has written to this characteristic or descriptor.          
            buffer = self.ble.gatts_read(self.rx)
            ble_msg = buffer.decode('UTF-8').strip()
            
    def register(self):        
        # Nordic UART Service (NUS)
        NUS_UUID = '6E400001-B5A3-F393-E0A9-E50E24DCCA9E'
        RX_UUID = '6E400002-B5A3-F393-E0A9-E50E24DCCA9E'
        TX_UUID = '6E400003-B5A3-F393-E0A9-E50E24DCCA9E'
            
        BLE_NUS = ubluetooth.UUID(NUS_UUID)
        BLE_RX = (ubluetooth.UUID(RX_UUID), ubluetooth.FLAG_WRITE)
        BLE_TX = (ubluetooth.UUID(TX_UUID), ubluetooth.FLAG_NOTIFY)
            
        BLE_UART = (BLE_NUS, (BLE_TX, BLE_RX,))
        SERVICES = (BLE_UART, )
        ((self.tx, self.rx,), ) = self.ble.gatts_register_services(SERVICES)

    def send(self, data):
        self.ble.gatts_notify(0, self.tx, data + 'n')

    def advertiser(self):
        name = bytes(self.name, 'UTF-8')
        adv_data = bytearray('\x02\x01\x02') + bytearray((len(name) + 1, 0x09)) + name
        self.ble.gap_advertise(100, adv_data)
        print(adv_data)
        print("rn")
                
led = Pin(2, Pin.OUT)
but = Pin(0, Pin.IN)
ble = ESP32_BLE("daniEsp32")

def buttons_irq(pin):
    led.value(not led.value())
    ble.send('LED state will be toggled.')
    print('LED state will be toggled.')   
but.irq(trigger=Pin.IRQ_FALLING, handler=buttons_irq)

def forward():
    mi_1.value(1)
    mi_2.value(0)
    md_1.value(1)
    md_2.value(0)
    sleep_ms(1000)
    mi_1.value(0)
    mi_2.value(0)
    md_1.value(0)
    md_2.value(0)
    
def reverse():
    mi_1.value(0)
    mi_2.value(1)
    md_1.value(0)
    md_2.value(1)
    sleep_ms(1000)
    mi_1.value(0)
    mi_2.value(0)
    md_1.value(0)
    md_2.value(0)
    
def right():
    mi_1.value(1)
    mi_2.value(0)
    md_1.value(0)
    md_2.value(0)
    sleep_ms(1000)
    mi_1.value(0)
    mi_2.value(0)
    md_1.value(0)
    md_2.value(0)

def left():
    mi_1.value(0)
    mi_2.value(0)
    md_1.value(1)
    md_2.value(0)
    sleep_ms(1000)
    mi_1.value(0)
    mi_2.value(0)
    md_1.value(0)
    md_2.value(0)
    
def alerta(temperatura):
    if temperatura < 29:
        led_v.value(1)
    else:
        led_r.value(1)
    sleep_ms(2000)
    led_v.value(0)
    led_r.value(0)    

sta = network.WLAN(network.STA_IF)
if not sta.isconnected(): 
  print('connecting to network...') 
  sta.active(True) 
  sta.connect(wifi_credentials.ssid, wifi_credentials.password) 
  while not sta.isconnected(): 
    pass 
print('network config:', sta.ifconfig())

HTTP_HEADERS = {'Content-Type': 'application/json'} 
THINGSPEAK_WRITE_API_KEY = '08S8AL0QVC77I3Y4' 
    
while activo:
    if ble_msg == 'read_LED':
        print(ble_msg)
        ble_msg = ""
        print('LED is ON.' if led.value() else 'LED is OFF')
        ble.send('LED is ON.' if led.value() else 'LED is OFF')
    elif ble_msg == 'read_SENSOR':
        print(ble_msg)
        ble_msg = ""
        d.measure()
        t = d.temperature()
        h = d.humidity()
        dht_readings = {'field1':t, 'field2':h} 
        request = urequests.post( 
          'http://api.thingspeak.com/update?api_key=' +
          THINGSPEAK_WRITE_API_KEY, 
          json = dht_readings, 
          headers = HTTP_HEADERS )  
        request.close() 
        alerta(t)
        ble.send('Temperatura: {:.2f}'.format(t) + ' ' + 'Humedad: {:.2f}'.format(h))
    elif ble_msg == 'move_ADELANTE':
        print(ble_msg)
        ble_msg = ""
        forward()
        ble.send('Moviendo hacia adelante')
    elif ble_msg == 'move_ATRAS':
        print(ble_msg)
        ble_msg = ""
        reverse()
        ble.send('Moviendo hacia adelante')
    elif ble_msg == 'move_IZQUIERDA':
        print(ble_msg)
        ble_msg = ""
        left()
        ble.send('Moviendo hacia la izquierda')
    elif ble_msg == 'move_DERECHA':
        print(ble_msg)
        ble_msg = ""
        right()
        ble.send('Moviendo hacia la derecha')
    elif ble_msg == 'OFF':
        print(ble_msg)
        ble_msg = ""
        ble.send('Apagando Esp32 de dani')
        activo = False
    sleep_ms(100)