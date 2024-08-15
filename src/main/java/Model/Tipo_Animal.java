/*
* Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
* Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
*/
package Model;
 
/**
*
* @author JOSUEDAVID
*/
public class Tipo_Animal {
    private int  idTipo_De_Animal;
    private String Descripcion;
 
    public Tipo_Animal() {
    }
 
    public Tipo_Animal(int idTipo_De_Animal, String Descripcion) {
        this.idTipo_De_Animal = idTipo_De_Animal;
        this.Descripcion = Descripcion;
    }
 
    public int getIdTipo_De_Animal() {
        return idTipo_De_Animal;
    }
 
    public void setIdTipo_De_Animal(int idTipo_De_Animal) {
        this.idTipo_De_Animal = idTipo_De_Animal;
    }
 
    public String getDescripcion() {
        return Descripcion;
    }
 
    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }
}