/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.annecy.pochat.production.mymask.web.ctrlers;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;
import fr.annecy.pochat.production.mymaskmodel.Masque;
import fr.annecy.pochat.production.mymaskdao.MasqueDAO;
import fr.annecy.pochat.production.mymaskmodel.Composants;
import java.util.ArrayList;

/**
 *
 * @author limem
 */
@WebServlet(name = "affichageMasqueCtrler", urlPatterns = {"/affichageMasque"})

public class affichageMasqueCtrlers extends HttpServlet {

    @Resource(name = "jdbc/MyMask")
    private DataSource ds;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String[] texte = request.getParameterValues("Texte");
            String[] date = request.getParameterValues("Date");
            String[] logo = request.getParameterValues("Logo");
            System.out.print("test");
            String[] prix = request.getParameterValues("Prix");
            String[] poids = request.getParameterValues("Poids");
            String[] code = request.getParameterValues("Code");

            List<Masque> lesMasques = MasqueDAO.trouverLesMasques(ds, texte, date, logo, prix, poids, code);
            System.out.print("test");
//            List<Composants> lesComposants = MasqueDAO.trouverLesComposants(ds);

//            List MasqComp = new ArrayList<>();
//            MasqComp.add(lesMasques);
//            MasqComp.add(lesComposants);
            request.setAttribute("lesMasques", lesMasques);
            request.getRequestDispatcher("/WEB-INF/affichageMasque.jsp").forward(request, response);

        } catch (SQLException ex) {
            Logger.getLogger(affichageMasqueCtrlers.class.getName()).log(Level.SEVERE, null, ex);
            throw new ServletException(ex.getMessage(), ex);
        }
    }
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">

    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
