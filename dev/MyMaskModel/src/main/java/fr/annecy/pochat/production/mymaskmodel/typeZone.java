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
public enum typeZone {

    Date("Date"),
    TexteFixe("TexteFixe"),
    Nombre("Nombre"),
    Prix("Prix"),
    TexteVariable("TexteVariable"),
    Poids("Poids"),
    Code("Code"),
    Graphique("Graphique");

    private String label;

    private typeZone(String label) {
        this.label = label;
    }

    public String getLabel() {
        return this.label;
    }
}
