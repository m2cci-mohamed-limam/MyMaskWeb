<%-- 
    Document   : affichageMasque
    Created on : 9 mai 2021, 23:56:29
    Author     : limem
--%>
<%@page import="fr.annecy.pochat.production.mymaskmodel.Masque"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Contenu de la page affichage des masques -->
<%
    List<Masque> lesMasques = (List<Masque>) request.getAttribute("lesMasques");
    if (lesMasques.size() > 0) {
        for (Masque masq : lesMasques) {
%>

<!--Bloc masque-->
<div class="card mb-3">  
    <div class="row g-0">
        <div class="col-md-5" style="text-align: center">					
            <img src="images/<%=masq.getNumMasque()%>.png" alt=""
                 class="img-fluid rounded"/>
        </div>
        <div class="col-md-7">
            <h5 class="card-title"><%=masq.getNomMasque()%></h5>
            <p class="card-text"><small class="text-muted">Taille: </small><%=masq.getTaille()%>         
            <p class="card-text"><small class="text-muted">Créé par: </small><%=masq.getLogin()%>

            <div>
                <button type="button" class="btn btn-outline-primary btn-lg mb-2 align-bottom" id="<%=masq.getNumMasque()%>">Consulter les contre-étiquettes générées par ce masque</button>
            </div>
            <!-- Button -->
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#popup<%=masq.getNumMasque()%>">
                Afficher les zones et les contenus correspondants
            </button>
            <!-- Pop-up -->
            <div id="popup<%=masq.getNumMasque()%>" class="modal">

                <div class="modal-dialog modal-dialog-centered modal-xl">
                    <div class="modal-content">
                        <div class="modal-header">
                            <p> Les zones du Masque <%=masq.getNumMasque()%> et leurs contenus </p>
                            <button type="button" class="btn btn-danger" data-dismiss="modal">X</button>
                        </div>
                        <div class="modal-body" id="contenuPop">

                            <table class="table">
                                <thead class="thead-light">     
                                    <tr>
                                        <th>Image du masque</th>
                                        <th>Zone</th>
                                        <th>Contenu</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <th>
                                    <img src="images/<%=masq.getNumMasque()%>.png" alt=""
                                         class="img-fluid rounded"/>
                                </th>                             
                                <tr>
                                    <th>à compléter</th>
                                    <th>à compléter</th> 
                                </tr>
                                </tbody>
                            </table>

                        </div>
                        <div class="modal-footer">
                            <h6 class="text-center">Priez de nous-contacter par mail au cas où vous souhaitez apporter des modifications
                                des contenus des zones</h6>
                        </div>
                    </div>
                </div>
            </div>

            <style>
                #btncss {
                    margin-top: 150px;
                }
            </style>
        </div>
    </div>
</div>
<%
    }

} else {
%>
<div style="text-align: center;">
    Aucun résultat ne correspond à votre recherche. 
</div>
<%
    }
%>


