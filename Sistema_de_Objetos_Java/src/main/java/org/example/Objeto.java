package org.example;

public class Objeto {
    private int objeto;
    private String descripcion;
    private String lugar;

    public Objeto(int objeto, String descripcion, String lugar){
        this.objeto = objeto;
        this.descripcion = descripcion;
        this.lugar = lugar;
    }

    public int getObjeto() {
        return objeto;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public String getLugar() {
        return lugar;
    }
}
