<%-- 
    Document   : index
    Created on : 9 mai 2021, 14:10:02
    Author     : limem
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html  lang="fr">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MyMask</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <link href="CSS/MyMaskStyle.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <!-- barre de navigation -->
        <nav class="navbar navbar-dark navbar-expand-sm bg-danger navbar-dark">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <ul class="navbar-nav">
                    <li class="nav-item">    
                        <img class="img-fluid"src="images/pochat et fils.png" alt="" style="width:100px"/>                                   
                    </li>      
                </ul>
            </div> 
            <%--<button type="button" id="voirInscription" class="btn btn-secondary">inscription</button><span>&emsp;</span>--%>
            <input type="button" value="Connexion" class="btn btn-secondary" onclick="location = '<%=request.getContextPath()%>/connexionCtrlers'"/>
        </nav>
        <!-- Modal -->
        <!--contenu de la page-->
        <form action="elementsMasqueCtrlers">
            <div class="accueil-image">
                <div class="accueil-text">
                    <h1 style="font-size:50px">Bienvenue</h1>
                    <h3>Votre application "MyMask" vous aidera à affecter votre nouvelle contre-étiquette à 
                        un des masques existants.</h3>
                    <br>
                    <br>
                    <button class="btn btn1">Essayer</button>
                </div>
            </div>
        </form>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script> 
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script><!-- Bootstrap -->
        
    </body>
</html>
