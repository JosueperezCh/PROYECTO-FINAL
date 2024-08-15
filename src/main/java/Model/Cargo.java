/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author josel
 */
public class Cargo {
    
    private int idCargo;
    private String NombreCargo;
    
    public Cargo() {
    }

    public Cargo(int idCargo, String NombreCargo) {
        this.idCargo = idCargo;
        this.NombreCargo = NombreCargo;
    }

    public int getIdCargo() {
        return idCargo;
    }

    public void setIdCargo(int idCargo) {
        this.idCargo = idCargo;
    }

    public String getNombreCargo() {
        return NombreCargo;
    }

    public void setNombreCargo(String NombreCargo) {
        this.NombreCargo = NombreCargo;
    }
    
    
    
}
