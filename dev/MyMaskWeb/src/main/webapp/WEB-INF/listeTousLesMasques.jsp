<%-- 
    Document   : listeTousLesMasques
    Created on : 16 mai 2021, 01:42:30
    Author     : limem
--%>

<%@page import="fr.annecy.pochat.production.mymaskmodel.Zone"%>
<%@page import="fr.annecy.pochat.production.mymaskmodel.Composants"%>
<%@page import="fr.annecy.pochat.production.mymaskmodel.Masque"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<%
    List MasqComp = (List) request.getAttribute("MasqComp");
    List<Composants> lesComposants = (List<Composants>) MasqComp.get(1);
    List<Masque> lesMasques = (List<Masque>) MasqComp.get(0);
    int i = 0;
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
            <%--<p class="card-text"><small class="text-muted">Consulter les différentes zones de ce masque et leurs contenus</small>--%>
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
                                <th rowspan="<%=lesComposants.get(i).getNbZones() + 1%>">
                                    <img src="images/<%=masq.getNumMasque()%>.png" alt=""
                                         class="img-fluid rounded"/>
                                </th>
                                <%
                                    List<Zone> lesZones = lesComposants.get(i).getLesZones();
                                    for (Zone zone : lesZones) {

                                %>
                                <tr>

                                    <th><%=zone.getNomZone()%></th>
                                    <th><%=zone.getContenu()%></th> 

                                </tr>
                                <%}%>
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
        i++;
    }
%>

<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script> 
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script><!-- Bootstrap -->
<script src="js/fonctionsUtiles.js" type="text/javascript"></script>