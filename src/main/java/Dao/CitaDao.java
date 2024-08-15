/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dao;

import Conexion.Conexion;

import Model.Cita;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author josel
 */
public class CitaDao extends Conexion{
    
    
    public ArrayList<Cita> listarCitas(){
        
        
        ArrayList<Cita> lista = new ArrayList<>();
        
        
        
        try {
            this.conectar();
            String sql =" SELECT *FROM cita c INNER JOIN";
            try(PreparedStatement pre = this.getCon().prepareStatement(sql); ResultSet rs = pre.executeQuery()){
                
                
                
                
            }
        } catch (SQLException e) {
            System.out.println("Error al mostrar " + e.getMessage());
        } finally {
            this.desconectar();
        }
        return lista;
    
    
    
    
    
    }
    
    
    
    
}
