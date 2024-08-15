/*
* Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
* Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
*/
package Dao;
 
import Conexion.Conexion;
import Model.Tipo_Animal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
 
/**
*
* @author JOSUEDAVID
*/
public class Tipo_AnimalDao extends Conexion {
    private Conexion c;
 
    public Tipo_AnimalDao(Conexion conexion) {
        this.c = conexion;
    }

    public Tipo_AnimalDao() {
    }
    
    public ArrayList<Tipo_Animal> mostrarTipo_Animal(){
        ArrayList<Tipo_Animal> lista = new ArrayList<>();
        try {
            this.conectar();
            String sql = "SELECT * FROM   mydb.tipo_de_animal";
            try (PreparedStatement pre = this.getCon().prepareStatement(sql);ResultSet rs = pre.executeQuery()){
                while (rs.next()){
                    Tipo_Animal ta = new Tipo_Animal();
                    ta.setIdTipo_De_Animal(rs.getInt(1));
                    ta.setDescripcion(rs.getString(2));
                    lista.add(ta);
                }
            }
        } catch (Exception e) {
            System.out.println("error al mostrar tipo de animal  " + e.getMessage());
        } finally {
            this.desconectar();
        }
        return lista;
    }
    
    public int insertarTipo_Animal (Tipo_Animal ta){
        int res= 0;
        
        try {
            this.conectar();
            String sql="INSERT INTO mydb.tipo_de_animal(Descripcion) VALUES (?)";
            PreparedStatement pre = this.getCon().prepareStatement(sql);           
            pre.setString(1, ta.getDescripcion());
            
            res=pre.executeUpdate();         
        } catch (SQLException e) {
            System.out.println("Error al insertar" + e.getMessage());
        }finally{
            this.desconectar();
        }
        return res;
    }
    
    public int modificarTipo_Animal (Tipo_Animal ta){
        int res =0;
        
        try{
            this.conectar();
            String sql ="UPDATE tipo_de_animal SET Descripcion =? WHERE idTipo_De_Animal=?";
            PreparedStatement pre = this.getCon().prepareStatement(sql);
            
            pre.setString(1, ta.getDescripcion ());
            res = pre.executeUpdate();
            
        }catch(SQLException e){
            System.out.println("Error al modificar tipo de Raza" + e.getMessage());
        }finally{
            this.desconectar();
        }
        return res;
    }
    
    public int eliminarTipo_Animal (int idTipo_de_animal){
        int res = 0;
        
        try {
            this.conectar();
            String sql = "DELETE FROM Tipo_de_animal WHERE idTipo_De_Animal=?";
            PreparedStatement pre = this.getCon().prepareStatement(sql);
            pre.setInt(1, idTipo_de_animal);
            
            res = pre.executeUpdate();
            
        } catch (SQLException e) {
            System.out.println("Error al Eliminar este Tipo de Animal" + e.getMessage());
        }finally{
                this.desconectar();
        }
        return res;
    }
}