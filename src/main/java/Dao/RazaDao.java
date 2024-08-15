/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dao;

import Conexion.Conexion;
import Model.Raza;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
/**
 *
 * @author JOSUEDAVID
 */
public class RazaDao extends Conexion {
    private Conexion c;
    
    public RazaDao(Conexion conexion){
        this.c = conexion;
    }
    
    public RazaDao(){
    }
    
    public ArrayList<Raza> mostrarRaza(){
        ArrayList<Raza> lista = new ArrayList<>();
        try {
            this.conectar();
            String sql = "SELECT * FROM raza;";
            try (PreparedStatement pre = this.getCon().prepareStatement(sql);ResultSet rs = pre.executeQuery()){
                while (rs.next()){
                    Raza rz = new Raza();
                    rz.setIdRaza(rs.getInt(1));
                    rz.setDescripcion(rs.getString(2));
                    lista.add(rz);
                }
            }
        } catch (SQLException e) {
            System.out.println("error al mostrar datos de la Raza" + e.getMessage());
        } finally {
            this.desconectar();
        }
        return lista;
    }
    
    public int insertarRaza(Raza rz){
        
        int res = 0;
        
        try{
            this.conectar();
            String sql = "INSERT INTO mydb.raza(Descripcion) VALUES (?)";
            PreparedStatement pre = this.getCon().prepareStatement(sql);
            pre.setString(1, rz.getDescripcion());
            
            res = pre.executeUpdate();
        } catch (SQLException e){
            System.out.println("Error al Insertar Tipo de Raza" + e.getMessage());
        }finally{
            this.desconectar();
        }
        return res;
    }
    
    public int modificarRaza (Raza rz) {
        int res = 0;
        
        try {
            this.conectar();
            String sql = "UPDATE raza SET Descripcion=?";
            PreparedStatement pre = this.getCon().prepareStatement(sql);
            
            pre.setString(1, rz.getDescripcion());
            res= pre.executeUpdate();
            
        } catch(SQLException e) {
            System.out.println("Error al modificar" + e.getMessage ());
        } finally{
            this.desconectar();
        }
        return res;
    }
    
    public int eliminarRaza (int idRaza){
        
        int res = 0;
        
        try{
            this.conectar();
            String sql = "DELETE FROM raza WHERE idRaza=?";
            PreparedStatement pre = this.getCon().prepareStatement(sql);
            pre.setInt(1, idRaza);
            
            res = pre.executeUpdate();
        } catch (SQLException e){
            System.out.println("Error al eliminar esta Raza" + e.getMessage());
        } finally{
            this.desconectar();
        }
        return res;
    }
}
