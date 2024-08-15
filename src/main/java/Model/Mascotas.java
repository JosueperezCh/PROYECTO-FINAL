/*
* Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
* Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
*/
package Model;

import java.time.LocalDate;

public class Mascotas {
    private int idMascotas;
    private String Nombre;
    private LocalDate F_Nacimiento;
    private String Nombres_Apellidos;
    private String Raza;
    private String Sexo;
    private String tipo_Animal;

    // Constructor, getters, and setters...

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

    public String getNombres_Apellidos() {
        return Nombres_Apellidos;
    }

    public void setNombres_Apellidos(String Nombres_Apellidos) {
        this.Nombres_Apellidos = Nombres_Apellidos;
    }

    public String getRaza() {
        return Raza;
    }

    public void setRaza(String Raza) {
        this.Raza = Raza;
    }

    public String getSexo() {
        return Sexo;
    }

    public void setSexo(String Sexo) {
        this.Sexo = Sexo;
    }

    public String getTipo_Animal() {
        return tipo_Animal;
    }

    public void setTipo_Animal(String tipo_Animal) {
        this.tipo_Animal = tipo_Animal;
    }
}

