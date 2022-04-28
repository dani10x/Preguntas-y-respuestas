package preguntas.y.respuestas.clases;

/**
 *
 * @author Daniel Alzate
 */
public class Ronda {
    private int numRonda;

    public Ronda() {
        numRonda=1;
    }

    public int getNumRonda() {
        return numRonda;
    }

    public void avanzarRonda(){
        if(numRonda<5){
            numRonda++;
        }
    }
    
    public void resetRonda(){
        numRonda=1;
    }
}
