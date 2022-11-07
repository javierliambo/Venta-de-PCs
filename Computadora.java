
package Modelo;
/*
 Micheli Lucio
 */
import java.util.ArrayList;
public class Computadora {
    private ArrayList<Componentes> listaComponentes = new ArrayList();
    private String descripcion;
 
    public Computadora(ArrayList<Componentes> lc, String d){
        this.descripcion = d;
        this.listaComponentes = lc;
        
    }
    public double totalComponentes(){
        double total = 0;
        for (int i = 0; i < this.listaComponentes.size(); i++) {
            total += listaComponentes.get(i).calcularPrecio();
        }
        return total;
    }
    public String toString(){
        String datos = "La descripcion de la computadora es: " + descripcion + "el precio total de los componentes es: " +totalComponentes();
        return datos;
    }
}
