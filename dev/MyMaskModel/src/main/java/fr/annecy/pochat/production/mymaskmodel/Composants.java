package fr.annecy.pochat.production.mymaskmodel;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author limem
 */
public class Composants implements Iterable<Zone> {

    private int numMasque;

    private final List<Zone> lesZones;

    public Composants(int numMasque) {
        this.numMasque = numMasque;
        
        lesZones = new ArrayList<>();
    }

    public int getNumMasque() {
        return numMasque;
    }

    public List<Zone> getLesZones() {
        return lesZones;
    }

    public void setNumMasque(int numMasque) {
        this.numMasque = numMasque;
    }

    public int getNbZones() {
        return lesZones.size();
    }

    public void ajouterZone(int numZone, String nomZone, typeZone typeZone, String contenu) {
        lesZones.add(new Zone(numZone, nomZone, typeZone, contenu));
    }

    @Override
    public Iterator<Zone> iterator() {
        return lesZones.iterator();
    }

    public Zone getZone(int i) {
        return lesZones.get(i);
    }

}
