# Preguntas-y-respuestas
El proyecto fue realizado con sql y java en netbeans,
en la rama archivos se adjunta el jar utilizado para la conexion,
el codigo utilizado para la creacion del tablespace es el siguiente:
create tablespace juego
datafile 'C:\base\baseJuego.dbf'
size 12m
autoextend on next 4m
maxsize 1024m;

El usuario creado para el tablespace es el siguiente:
usuario: juego_admin
contraseña: sofka

En el programa principal puede ocurrir una error en la clase conexion, esto devido al puerto que utiice por defecto oracle en tu ordenador
para solucionarlo, en la linea 19 se puede cambiar el 1522 por 1521

Puede ocurrir un error de librerias que afevcte a los jFrame, para solucionarlo, en netbeans basta con crear un nuevo jFrame y añadir un panel
luego click derecho sobre el panel, set layout, absolute layout; de esta manera netbeans cargará y configurará la libreria AbsoluteLayaout automaticamente
solucionando el error

Hubo un gran problema con el repositrio local remoto, por eso se adjuntaran dos githubs, uno con el proyecto entero y todo su recorrido,
y el otro con toda la creacion de la base de datos

Espero que les guste :)
