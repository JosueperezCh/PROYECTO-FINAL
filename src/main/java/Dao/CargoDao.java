/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dao;

import Model.Cargo;
import Conexion.Conexion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author josel
 */
public class CargoDao extends Conexion {

    private Conexion c;

    public CargoDao(Conexion c) {
        this.c = c;
    }
    public CargoDao() {
        
    }

    public ArrayList mostrarCargo() {
        ArrayList<Cargo> lista = new ArrayList<>();

        try {
            this.conectar();
            String sql = "SELECT idCargo, NombreCargo FROM cargo";
            try (PreparedStatement pre = this.getCon()
                    .prepareStatement(sql); ResultSet rs = pre.executeQuery()) {
                while (rs.next()) {
                    
                    Cargo cargo = new Cargo();
                    cargo.setIdCargo(rs.getInt(1));
                    cargo.setNombreCargo(rs.getString(2));
                    lista.add(cargo);

                }
            }
        } catch (SQLException e) {
            System.out.println("Error al mostrar " + e.getMessage());
            
        } finally{
            
            this.desconectar();
        }
        return lista;

    }

}
