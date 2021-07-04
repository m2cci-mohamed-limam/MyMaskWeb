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
public class Etiquette {
    private int PLU;
    private String designation;
    private int numParamEtq;
    private int numParamAutomate;
    private final Masque leMasque;

    public Etiquette(int PLU, String Designation, int NumParamEtq, int NumParamAutomate, Masque leMasque) {
        this.PLU = PLU;
        this.designation = Designation;
        this.numParamEtq = NumParamEtq;
        this.numParamAutomate = NumParamAutomate;
        this.leMasque = leMasque;
    }

    public int getPLU() {
        return PLU;
    }

    public String getDesignation() {
        return designation;
    }

    public int getNumParamEtq() {
        return numParamEtq;
    }

    public int getNumParamAutomate() {
        return numParamAutomate;
    }

    public Masque getLeMasque() {
        return leMasque;
    }

    public void setPLU(int PLU) {
        this.PLU = PLU;
    }

    public void setDesignation(String designation) {
        this.designation = designation;
    }

    public void setNumParamEtq(int numParamEtq) {
        this.numParamEtq = numParamEtq;
    }

    public void setNumParamAutomate(int numParamAutomate) {
        this.numParamAutomate = numParamAutomate;
    }
    
    
}
