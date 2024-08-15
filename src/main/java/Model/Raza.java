/*
* Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
* Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
*/
package Model;
 
/**
*
* @author JOSUEDAVID
*/
public class Raza {
    private int idRaza;
    private String Descripcion;
 
    public Raza() {
    }
 
    public Raza(int idRaza, String Descripcion) {
        this.idRaza = idRaza;
        this.Descripcion = Descripcion;
    }
 
    public int getIdRaza() {
        return idRaza;
    }
 
    public void setIdRaza(int idRaza) {
        this.idRaza = idRaza;
    }
 
    public String getDescripcion() {
        return Descripcion;
    }
 
    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }
}