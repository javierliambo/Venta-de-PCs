//Nayla
package Modelo;

import Modelo.Persona;

public class Cliente extends Persona{
private String correo;
private String telefono;

public Cliente(String correo, String nombre, int dni) {
super(nombre, dni);
    this.correo = correo;
}

public String toString(){
    return Persona.class.toString()+ "\n Correo: "+this.correo + "\n Telefono: "+this.telefono ;
}
}