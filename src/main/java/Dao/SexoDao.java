/*
* Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
* Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
*/
package Dao;
 
import Conexion.Conexion;
import Model.Sexo;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
 
/**
*
* @author JOSUEDAVID
*/
public class SexoDao extends Conexion{
    private Conexion c;
    public SexoDao(Conexion conexion){
        this.c = conexion;
    }

    public SexoDao() {
    }
    
    public ArrayList<Sexo> mostrarSexo (){
        ArrayList<Sexo> lista = new ArrayList<>();
        try{
            this.conectar();
            String sql = "SELECT * FROM mydb.sexo";
            try (PreparedStatement pre = this.getCon().prepareStatement(sql);ResultSet rs = pre.executeQuery()){
                while (rs.next()){
                    Sexo sx = new Sexo();
                    sx.setIdSexo(rs.getInt(1));
                    sx.setDescripcion(rs.getString(2));
                    lista.add(sx);
                }
            }
        } catch (Exception e){
            System.out.println("error al mostrar" + e.getMessage());
        } finally{
            this.desconectar();
        }
        return lista;
    }
}