/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.annecy.pochat.production.mymaskmodel;

/**
 *
 * @author limem
 */
public class Zone {
    private int numZone;
    private String nomZone;
    private typeZone typeZone;
    private String contenu;

    public Zone(int numZone, String nomZone, typeZone typeZone, String contenu) {
        this.numZone = numZone;
        this.nomZone = nomZone;
        this.typeZone = typeZone;
        this.contenu = contenu;
    }

    public int getNumZone() {
        return numZone;
    }

    public String getNomZone() {
        return nomZone;
    }

    public typeZone getTypeZone() {
        return typeZone;
    }

    public String getContenu() {
        return contenu;
    }

    public void setNumZone(int numZone) {
        this.numZone = numZone;
    }

    public void setNomZone(String nomZone) {
        this.nomZone = nomZone;
    }

    public void setTypeZone(typeZone typeZone) {
        this.typeZone = typeZone;
    }

    public void setContenu(String contenu) {
        this.contenu = contenu;
    }
    
}
