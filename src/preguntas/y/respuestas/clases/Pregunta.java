package preguntas.y.respuestas.clases;

import java.util.ArrayList;

/**
 *
 * @author Daniel Alzate
 */
public final class Pregunta {
    private Categoria categoria;
    private String pregunta;
    private ArrayList<Respuesta> respuestas;

    public Pregunta(Categoria categoria, String pregunta, ArrayList<Respuesta> respuestas) {
        this.categoria=categoria;
        this.pregunta = pregunta;
        this.respuestas = respuestas;
    }

    public Categoria getCategoria() {
        return categoria;
    }

    public void setCategoria(Categoria categoria) {
        this.categoria = categoria;
    }

    public String getPregunta() {
        return pregunta;
    }

    public void setPregunta(String pregunta) {
        this.pregunta = pregunta;
    }

    public ArrayList getRespuestas() {
        return respuestas;
    }

    public void setRespuestas(ArrayList respuestas) {
        this.respuestas = respuestas;
    }
    
    public void mezclarRespuestas(){
        if(respuestas!=null){
            for(int i=0; i<4; i++){
                int random1=(int) Math.floor(Math.random()*(4)+1);
                int random2=0;
                do{
                    random2=(int) Math.floor(Math.random()*(4)+1);
                }while(random2==random1);
                
                Respuesta aux = new Respuesta(respuestas.get(random2));
                respuestas.set(random2, respuestas.get(random1));
                respuestas.set(random1, aux);
            }
        }
    }
}
