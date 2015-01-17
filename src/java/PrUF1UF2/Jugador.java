package PrUF1UF2;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author sergi
 */
import java.util.Date;

public class Jugador {
    private String nom;
    private Date dataEntrada;

    public Jugador() {
    }

    public Jugador(String nom, Date data) {
        this.nom = nom;
        this.dataEntrada=data;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public Date getDataEntrada() {
        return dataEntrada;
    }

    public void setDataEntrada(Date dataEntrada) {
        this.dataEntrada = dataEntrada;
    }

    @Override
    public String toString() {
        return "Usuari:" + nom;
    }
}