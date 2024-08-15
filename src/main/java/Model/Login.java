/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author josel
 * 
 */
public class Login {
    
    private int idUsuario;
    private String Nombres_Apellidos;
    private String Correo_Electronico;
    private String Usuario;
    private String Password;
    private int idCargo;
    private String NombreCargo;

    public Login() {
    }

    public Login(int idUsuario, String Nombres_Apellidos, String Correo_Electronico, String Usuario, String Password, int idCargo, String NombreCargo) {
        this.idUsuario = idUsuario;
        this.Nombres_Apellidos = Nombres_Apellidos;
        this.Correo_Electronico = Correo_Electronico;
        this.Usuario = Usuario;
        this.Password = Password;
        this.idCargo = idCargo;
        this.NombreCargo = NombreCargo;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuarios) {
        this.idUsuario = idUsuarios;
    }

    public String getNombres_Apellidos() {
        return Nombres_Apellidos;
    }

    public void setNombres_Apellidos(String Nombres_Apellidos) {
        this.Nombres_Apellidos = Nombres_Apellidos;
    }

    public String getCorreo_Electronico() {
        return Correo_Electronico;
    }

    public void setCorreo_Electronico(String Correo_Electronico) {
        this.Correo_Electronico = Correo_Electronico;
    }

    public String getUsuario() {
        return Usuario;
    }

    public void setUsuario(String Usuario) {
        this.Usuario = Usuario;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
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

