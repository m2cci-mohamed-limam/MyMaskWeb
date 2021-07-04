<%-- 
    Document   : connexion
    Created on : 9 mai 2021, 17:50:50
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
        </nav>
        <!-- Contenu de la page connexion -->
        <div class="container-fluid">
            <div class="row">
                <div class="col-3">
                </div>
                <div class="col-6">
                    <label for="login" style="display: block;" >* Login :</label>
                    <input class="cnxinput" type="text" id="login" name="login" size="10">
                    <label  for="mdp" style="display: block;">* Mot de passe :</label>
                    <input class="cnxinput" type="text" id="mdp" name="mdp" size="10">
                    <div>
                        <br>
                        <input type="button" value="Valider" class="btn btn-danger" onclick="location = '<%=request.getContextPath()%>/elementsMasqueCtrlers'"/>
                        <input type="button" value="Annuler" class="btn btn-secondary" onclick="location = '<%=request.getContextPath()%>/accueilCtrlers'"/>
                    </div>
                </div>
            </div>
            <div class="col-3">
            </div>
        </div>

    </body>
</html>
