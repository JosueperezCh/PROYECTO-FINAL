/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.time.LocalTime;

/**
 *
 * @author josel
 */
public class Cita {
    
    private int idCita;
    private LocalTime Hora_Cita;
    private int Mascotas_idMascotas;
    private String Nombre ;
    private int  M_idClientes;
    private String Nombre_Apellidos;
    private int idUser ;
    private String Nombres_Apellidos;
    private int idEstado ;

    public Cita(int idCita, LocalTime Hora_Cita, int Mascotas_idMascotas, String Nombre, int M_idClientes, String Nombre_Apellidos, int idUser, String Nombres_Apellidos, int idEstado) {
        this.idCita = idCita;
        this.Hora_Cita = Hora_Cita;
        this.Mascotas_idMascotas = Mascotas_idMascotas;
        this.Nombre = Nombre;
        this.M_idClientes = M_idClientes;
        this.Nombre_Apellidos = Nombre_Apellidos;
        this.idUser = idUser;
        this.Nombres_Apellidos = Nombres_Apellidos;
        this.idEstado = idEstado;
    }

    public Cita() {
    }

    public int getIdCita() {
        return idCita;
    }

    public void setIdCita(int idCita) {
        this.idCita = idCita;
    }

    public LocalTime getHora_Cita() {
        return Hora_Cita;
    }

    public void setHora_Cita(LocalTime Hora_Cita) {
        this.Hora_Cita = Hora_Cita;
    }

    public int getMascotas_idMascotas() {
        return Mascotas_idMascotas;
    }

    public void setMascotas_idMascotas(int Mascotas_idMascotas) {
        this.Mascotas_idMascotas = Mascotas_idMascotas;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public int getM_idClientes() {
        return M_idClientes;
    }

    public void setM_idClientes(int M_idClientes) {
        this.M_idClientes = M_idClientes;
    }

    public String getNombre_Apellidos() {
        return Nombre_Apellidos;
    }

    public void setNombre_Apellidos(String Nombre_Apellidos) {
        this.Nombre_Apellidos = Nombre_Apellidos;
    }

    public int getIdUser() {
        return idUser;
    }

    public void setIdUser(int idUser) {
        this.idUser = idUser;
    }

    public String getNombres_Apellidos() {
        return Nombres_Apellidos;
    }

    public void setNombres_Apellidos(String Nombres_Apellidos) {
        this.Nombres_Apellidos = Nombres_Apellidos;
    }

    public int getIdEstado() {
        return idEstado;
    }

    public void setIdEstado(int idEstado) {
        this.idEstado = idEstado;
    }
    
    
    
}
