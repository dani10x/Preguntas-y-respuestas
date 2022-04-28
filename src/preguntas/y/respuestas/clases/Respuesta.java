package preguntas.y.respuestas.clases;

/**
 *
 * @author Daniel Alzate
 */
public final class Respuesta {
    private final String Id_Respuesta;
    private final String Respuesta;
    private final boolean correcta;

    public Respuesta(String Id_Respuesta, String Respuesta, boolean correcta) {
        this.Id_Respuesta = Id_Respuesta;
        this.Respuesta = Respuesta;
        this.correcta = correcta;
    }
    
    public Respuesta(Respuesta respuesta){
        this.Id_Respuesta=respuesta.Id_Respuesta;
        this.Respuesta=respuesta.Respuesta;
        this.correcta=respuesta.correcta;
    }

    public String getId_Respuesta() {
        return Id_Respuesta;
    }

    public String getRespuesta() {
        return Respuesta;
    }

    public boolean isCorrecta() {
        return correcta;
    }
}
