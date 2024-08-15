/*
* Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
* Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
*/
package Model;
 
/**
*
* @author JOSUEDAVID
*/
public class Sexo {
    private int idSexo;
    private String Descripcion;
 
    public Sexo() {
    }
 
    public Sexo(int idSexo, String Descripcion) {
        this.idSexo = idSexo;
        this.Descripcion = Descripcion;
    }
 
    public int getIdSexo() {
        return idSexo;
    }
 
    public void setIdSexo(int idSexo) {
        this.idSexo = idSexo;
    }
 
    public String getDescripcion() {
        return Descripcion;
    }
 
    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }
}