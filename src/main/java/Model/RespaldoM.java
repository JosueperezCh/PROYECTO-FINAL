/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.time.LocalDate;

/**
 *
 * @author josel
 */
public class RespaldoM {
    private int idMascotas;
    private String Nombre;
    private LocalDate F_Nacimiento;
    private int Clientes_idClientes;
    private String Nombres_Apellidos;
    private int idRaza;
    private String Descripcion;
    private int idSexo;
    private String Sexo;
    private int idTipo_De_Animal;
    private String Tipo;
 
    public RespaldoM() {
    }

    public RespaldoM(int idMascotas, String Nombre, LocalDate F_Nacimiento, int Clientes_idClientes, String Nombres_Apellidos, int idRaza, String Descripcion, int idSexo, String Sexo, int Tipo_De_Animal_idTipo_De_Animal, String Tipo) {
        this.idMascotas = idMascotas;
        this.Nombre = Nombre;
        this.F_Nacimiento = F_Nacimiento;
        this.Clientes_idClientes = Clientes_idClientes;
        this.Nombres_Apellidos = Nombres_Apellidos;
        this.idRaza = idRaza;
        this.Descripcion = Descripcion;
        this.idSexo = idSexo;
        this.Sexo = Sexo;
        this.idTipo_De_Animal = Tipo_De_Animal_idTipo_De_Animal;
        this.Tipo = Tipo;
    }

    public int getIdMascotas() {
        return idMascotas;
    }

    public void setIdMascotas(int idMascotas) {
        this.idMascotas = idMascotas;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public LocalDate getF_Nacimiento() {
        return F_Nacimiento;
    }

    public void setF_Nacimiento(LocalDate F_Nacimiento) {
        this.F_Nacimiento = F_Nacimiento;
    }

    public int getClientes_idClientes() {
        return Clientes_idClientes;
    }

    public void setClientes_idClientes(int Clientes_idClientes) {
        this.Clientes_idClientes = Clientes_idClientes;
    }

    public String getNombres_Apellidos() {
        return Nombres_Apellidos;
    }

    public void setNombres_Apellidos(String Nombres_Apellidos) {
        this.Nombres_Apellidos = Nombres_Apellidos;
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

    public int getIdSexo() {
        return idSexo;
    }

    public void setIdSexo(int idSexo) {
        this.idSexo = idSexo;
    }

    public String getSexo() {
        return Sexo;
    }

    public void setSexo(String Sexo) {
        this.Sexo = Sexo;
    }

    public int getidTipo_De_Animal() {
        return idTipo_De_Animal;
    }

    public void setidTipo_De_Animal(int idTipo_De_Animal) {
        this.idTipo_De_Animal = idTipo_De_Animal;
    }

    public String getTipo() {
        return Tipo;
    }

    public void setTipo(String Tipo) {
        this.Tipo = Tipo;
    }
    
    
 
 
}
