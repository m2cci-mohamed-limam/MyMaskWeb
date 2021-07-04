/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.annecy.pochat.production.mymaskmodel;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/**
 *
 * @author limem
 */
public class Masque implements Iterable<Etiquette> {

    private int numMasque;
    private String nomMasque;
    private String taille;
    private String login;
    private int nDeFois;

    private final List<Etiquette> lesEtiquettes;

    public Masque(int numMasque, String nomMasque, String taille, int nDeFois){
        this.numMasque = numMasque;
        this.nomMasque = nomMasque;
        this.taille = taille;
        this.nDeFois=nDeFois;
        lesEtiquettes = new ArrayList<>();
    }
    public Masque(int numMasque, String nomMasque, String taille, String login) {
        this.numMasque = numMasque;
        this.nomMasque = nomMasque;
        this.taille = taille;
        this.login=login;
        lesEtiquettes = new ArrayList<>();
    }
    public Masque(int numMasque, String nomMasque, String taille) {
        this.numMasque = numMasque;
        this.nomMasque = nomMasque;
        this.taille = taille;
        lesEtiquettes = new ArrayList<>();
    }

    public String getLogin() {
        return login;
    }

    public int getNumMasque() {
        return numMasque;
    }

    public String getNomMasque() {
        return nomMasque;
    }

    public String getTaille() {
        return taille;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    

    public void setNumMasque(int numMasque) {
        this.numMasque = numMasque;
    }

    public void setNomMasque(String nomMasque) {
        this.nomMasque = nomMasque;
    }

    public void setTaille(String taille) {
        this.taille = taille;
    }

    public int getnDeFois() {
        return nDeFois;
    }

    public void setnDeFois(int nDeFois) {
        this.nDeFois = nDeFois;
    }
    
      public int getNbEtiquettes() {
        return lesEtiquettes.size();
    }

    public void ajouterEtiquette(int PLU, String Designation, int NumParamEtq, int NumParamAutomate) {
        lesEtiquettes.add(new Etiquette(PLU, Designation, NumParamEtq, NumParamAutomate, this));
    }

    @Override
    public Iterator<Etiquette> iterator() {
        return lesEtiquettes.iterator();
    }

    public Etiquette getEtiquette(int i) {
        return lesEtiquettes.get(i);
    }

}
