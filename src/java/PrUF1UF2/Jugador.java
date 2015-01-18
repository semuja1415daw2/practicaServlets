package PrUF1UF2;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *Classe jugador per introduir el anom dels jugadors i també els rows de la quadricula amb el joc
 * 
 * @author sergi
 * @version 1.0
 * 
 */
import java.util.ArrayList;

public class Jugador {
    private String jugador;

    public Jugador() {
    }

    public Jugador(String jugador) {
        this.jugador = jugador;
    }

    public String getNom() {
        return jugador;
    }

    public void setNom(String nom) {
        this.jugador = jugador;
    }

    
    private ArrayList<String> taulaJoc = new ArrayList<String>();
    

    public ArrayList<String> getTaulaJoc() {
        return taulaJoc;
    }

    @Override
    public String toString() {
        return "usuari:" + jugador;
    }
}