package org.example;

public class Usuario {
    private int idObjeto;
    private String descripcion;
    private String lugar;

    public Usuario(int idObjeto, String descripcion, String lugar){
        this.idObjeto = idObjeto;
        this.descripcion = descripcion;
        this.lugar = lugar;
    }

    public int getIdObjeto() {
        return idObjeto;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public String getLugar() {
        return lugar;
    }
}
