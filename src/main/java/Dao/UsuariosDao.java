        /*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dao;

import Conexion.Conexion;
import Model.Login;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author josel
 */
public class UsuariosDao extends Conexion {

    private Conexion c;

    public UsuariosDao(Conexion conexion) {

        this.c = conexion;
    }

    public UsuariosDao() {
        
    }

    public ArrayList<Login> mostrarUsuario() {
        ArrayList<Login> lista = new ArrayList<>();
        try {
            this.conectar();
            String sql = "SELECT * FROM usuarios usu INNER JOIN cargo ca ON usu.idCargo = ca.idCargo ";
            try (PreparedStatement pre = this.getCon().prepareStatement(sql); ResultSet rs = pre.executeQuery()) {

                while (rs.next()) {
                    Login login = new Login();
                    login.setIdUsuario(rs.getInt(1));
                    login.setNombres_Apellidos(rs.getString(2));
                    login.setCorreo_Electronico(rs.getString(3));
                    login.setUsuario(rs.getString(4));
                    login.setPassword(rs.getString(5));
                    login.setIdCargo(rs.getInt(6));
                    login.setNombreCargo(rs.getString(8));
                    
                    lista.add(login);
                }
            }
        } catch (SQLException e) {
            System.out.println("Error al mostrar " + e.getMessage());
        } finally {
            this.desconectar();
        }
        return lista;
    }

    public int insertarUsuario(Login user) {

        int res = 0;

        try {
            this.conectar();
            String sql = "INSERT INTO usuarios(Nombres_Apellidos, Correo_Electronico, Usuario, Password, idCargo) VALUES(?, ?, ?, ?, ?)";
            PreparedStatement pre = this.getCon().prepareStatement(sql);
            pre.setString(1, user.getNombres_Apellidos());
            pre.setString(2, user.getCorreo_Electronico());
            pre.setString(3, user.getUsuario());
            pre.setString(4, user.getPassword());
            pre.setInt(5, user.getIdCargo());
             
            res= pre.executeUpdate();

        } catch (SQLException e) {
            System.out.println("Error al insertar" + e.getMessage());
        } finally {
            this.desconectar();
        }
        return res;

    }
    
    public int modificarUsuario (Login usu) {
        
        int res = 0 ;
        
        try {
            this.conectar();
            String sql = "UPDATE usuarios SET Nombres_Apellidos=?, Correo_Electronico=?, Usuario=?, Password=?, idCargo=? WHERE idUsuario=?";
            PreparedStatement pre = this.getCon().prepareStatement(sql);
            
            pre.setString(1, usu.getNombres_Apellidos());
            pre.setString(2, usu.getCorreo_Electronico());
            pre.setString(3, usu.getUsuario());
            pre.setString(4, usu.getPassword());
            pre.setInt(5, usu.getIdCargo());
            pre.setInt(6, usu.getIdUsuario());
            
            res = pre.executeUpdate();
            
        } catch (SQLException e) {
            System.out.println("Error al modificar"+ e.getMessage());
        } finally {
            this.desconectar();
        }
        return res;
    }
    
    public int eliminarUsuario (int idUsuario){
        int res = 0;

        try {
            this.conectar();
            String sql = "DELETE FROM usuarios WHERE idUsuario=?";
            PreparedStatement pre = this.getCon().prepareStatement(sql);
            pre.setInt(1, idUsuario);
            res = pre.executeUpdate();
            
        } catch (SQLException e) {
            System.out.println("Error al eliminar"+ e.getMessage());
        } finally {
            this.desconectar();
        }
        
        return res;
    
    
    }
    
    public int listarVet (Login vet){
        int res = 0;
        
        try {
            this.conectar();
            String sql ="SELECT * FROM ";
            
        } catch (Exception e) {
            System.out.println("Error al mostrar vet"+ e.getMessage());
        } finally {
            this.desconectar();
        }
        return res;
    
    
    }
}
