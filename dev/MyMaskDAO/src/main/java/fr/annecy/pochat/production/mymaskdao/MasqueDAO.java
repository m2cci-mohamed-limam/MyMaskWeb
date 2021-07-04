/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.annecy.pochat.production.mymaskdao;

import fr.annecy.pochat.production.mymaskmodel.Composants;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.sql.DataSource;
import fr.annecy.pochat.production.mymaskmodel.Masque;
import fr.annecy.pochat.production.mymaskmodel.typeZone;
import java.sql.PreparedStatement;

/**
 *
 * @author limem
 */
public class MasqueDAO {

    private static final String LISTER_LES_COMPOSANTS = "SELECT numMasque, numZone, nomZome, typeZone, Contenu\n "
            + "FROM LesComposants JOIN LesZones USING (numZone) ";
    
    public static List<Composants> trouverLesComposants(DataSource ds) throws SQLException {
        try (Connection conn = ds.getConnection()) {
            List<Composants> lesComposants = new ArrayList<>();
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(LISTER_LES_COMPOSANTS );
            int numComposantPrec = -1;
            Composants leComposant = null;
            while (rs.next()) {
                int numMasque = rs.getInt("numMasque");
                if (numMasque != numComposantPrec) {
                    leComposant = new Composants(numMasque);
                    numComposantPrec = numMasque;
                    lesComposants.add(leComposant);
                }
                leComposant.ajouterZone(rs.getInt("numZone"), rs.getString("nomZome"), typeZone.valueOf(rs.getString("typeZone")), rs.getString("Contenu"));
            }
            return lesComposants;
        }
    }
    
    private static final String FILTRER_LES_MASQUES_DEBUT = "SELECT numMasque, nomMasque, taille, count(numMasque) AS ndefois\n "
            + "FROM LesComposants JOIN LesZones USING (numZone) JOIN LesMasques USING (numMasque) ";

    private static final String FILTRER_LES_MASQUES_FIN = "Group by numMasque\n "
            + "ORDER BY ndefois DESC ";

    public static List<Masque> trouverLesMasques(DataSource ds, String[] texte, String[] date, String[] logo, String[] prix,
            String[] poids, String[] code) throws SQLException {
        String whereConditions = "";
        boolean test = false;
        String query = FILTRER_LES_MASQUES_DEBUT;
        try (Connection conn = ds.getConnection()) {
            List<Masque> lesMasques = new ArrayList<>();
            boolean premier = true;
            if (texte != null) {
                for (int i = 0; i < texte.length; i++) {
                    if (premier) {
                        whereConditions += "WHERE Contenu = ? ";
                        premier = false;
                    } else {
                        whereConditions += " OR Contenu = ? ";
                    }
                }
                test = true;
            }
            if (date != null) {
                for (int i = 0; i < date.length; i++) {
                    if (premier) {
                        whereConditions += "WHERE Contenu = ? ";
                        premier = false;
                    } else {
                        whereConditions += " OR Contenu = ? ";
                    }
                }
                test = true;
            }
            if (logo != null) {
                for (int i = 0; i < logo.length; i++) {
                    if (premier) {
                        whereConditions += "WHERE Contenu = ? ";
                        premier = false;
                    } else {
                        whereConditions += " OR Contenu = ? ";
                    }
                }
                test = true;
            }
            if (prix != null) {
                for (int i = 0; i < prix.length; i++) {
                    if (premier) {
                        whereConditions += "WHERE Contenu = ? ";
                        premier = false;
                    } else {
                        whereConditions += " OR Contenu = ? ";
                    }
                }
                test = true;
            }
            if (poids != null) {
                for (int i = 0; i < poids.length; i++) {
                    if (premier) {
                        whereConditions += "WHERE Contenu = ? ";
                        premier = false;
                    } else {
                        whereConditions += " OR Contenu = ? ";
                    }
                }
                test = true;
            }
            if (code != null) {
                for (int i = 0; i < code.length; i++) {
                    if (premier) {
                        whereConditions += "WHERE Contenu = ? ";
                        premier = false;
                    } else {
                        whereConditions += " OR Contenu = ? ";
                    }
                }
                test = true;
            }

            query += whereConditions + FILTRER_LES_MASQUES_FIN;
            PreparedStatement stmt = conn.prepareStatement(query);
            int index = 1;
            if (texte != null) {
                for (int i = 0; i < texte.length; i++) {
                    stmt.setString(index, texte[i]);
                    index++;
                }
            }
            if (date != null) {
                for (int i = 0; i < date.length; i++) {
                    stmt.setString(index, date[i]);
                    index++;
                }
            }
            if (logo != null) {
                for (int i = 0; i < logo.length; i++) {
                    stmt.setString(index, logo[i]);
                    index++;
                }
            }
            if (prix != null) {
                for (int i = 0; i < prix.length; i++) {
                    stmt.setString(index, prix[i]);
                    index++;
                }
            }
            if (poids != null) {
                for (int i = 0; i < poids.length; i++) {
                    stmt.setString(index, poids[i]);
                    index++;
                }
            }
            if (code != null) {
                for (int i = 0; i < code.length; i++) {
                    stmt.setString(index, code[i]);
                    index++;
                }
            }

            ResultSet rs = stmt.executeQuery();
            Masque leMasque = null;
            while (rs.next()) {
                leMasque = new Masque(rs.getInt("numMasque"), rs.getString("nomMasque"),
                        rs.getString("taille"), rs.getInt("ndefois"));
                lesMasques.add(leMasque);
            }
            return lesMasques;
        }
    }

    private static final String LISTER_LES_MASQUES = "SELECT numMasque, nomMasque, taille, login, PLU, Designation, numParamEtq, NumParamAutomate,numZone, nomZome, typeZone, Contenu\n "
            + "from LesMasques JOIN LesEtiquettes USING(numMasque) JOIN LesComposants USING(numMasque) JOIN LesZones USING (numZone) ";

    public static List trouverTousLesMasques(DataSource ds) throws SQLException {
        try (Connection conn = ds.getConnection()) {
            List<Masque> lesMasques = new ArrayList<>();
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(LISTER_LES_MASQUES);
            int numMasquePrec = -1;
            Masque leMasque = null;            
            while (rs.next()) {
                int numMasque = rs.getInt("numMasque");
                if (numMasque != numMasquePrec) {
                    leMasque = new Masque(numMasque, rs.getString("nomMasque"), rs.getString("taille"),
                            rs.getString("login"));                    
                    numMasquePrec = numMasque;
                    lesMasques.add(leMasque);                    
                }
                leMasque.ajouterEtiquette(rs.getInt("PLU"), rs.getString("Designation"), rs.getInt("numParamEtq"), rs.getInt("NumParamAutomate"));               
            }
            List<Composants> lesComposants = new ArrayList<>();
            Statement stmt1 = conn.createStatement();
            ResultSet rs1 = stmt1.executeQuery(LISTER_LES_COMPOSANTS );
            int numComposantPrec = -1;
            int numZonePrec = -1;
            Composants leComposant = null;
            while (rs1.next()) {
                int numMasque = rs1.getInt("numMasque");
                int numZone = rs1.getInt("numZone");
                if (numMasque != numComposantPrec) {
                    leComposant = new Composants(numMasque);
                    numComposantPrec = numMasque;
                    lesComposants.add(leComposant);
                }
                if(numZone != numZonePrec){
                leComposant.ajouterZone(rs1.getInt("numZone"), rs1.getString("nomZome"), typeZone.valueOf(rs1.getString("typeZone")), rs1.getString("Contenu"));
            }
            }
            List MasqComp = new ArrayList<>();
            MasqComp.add(lesMasques);
            MasqComp.add(lesComposants);
            return MasqComp;       
        }
    }
}
