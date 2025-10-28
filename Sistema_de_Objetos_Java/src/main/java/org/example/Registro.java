package org.example;

import java.util.Date;

public class Registro {
    private int idRegistro;
    private Boolean tipo;
    private Date fecha;
    private String descripcion;

    public Registro(String descripcion, Date fecha, int idRegistro, Boolean tipo){
        this.idRegistro = idRegistro;
        this.tipo = tipo;
        this.fecha = fecha;
        this.descripcion = descripcion;
    }

    public int getIdRegistro() {
        return idRegistro;
    }

    public Boolean getTipo() {
        return tipo;
    }

    public Date getFecha() {
        return fecha;
    }

    public String getDescripcion() {
        return descripcion;
    }
}
