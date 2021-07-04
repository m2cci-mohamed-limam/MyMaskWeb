<%-- 
    Document   : elementsMasque
    Created on : 9 mai 2021, 18:05:07
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
        <!-- Contenu de la page elementsMasque -->
        <br>
        <div class="container-fluid">

            <div class="row">

                <div class="bg-secondary text-white col-3 rounded">
                    <form id="filtreMasque" class ="p-2">
                        <h4>Texte</h4>
                        <div class="mb-3">
                            <div class="form-check">
                                <input name="Texte" class="form-check-input" type="checkbox" value="Denomination du produit" id="TexteBox1">
                                <label class="form-check-label" for="TexteBox1">D&eacute;nomination du produit</label>
                            </div>
                            <div class="form-check">
                                <input name="Texte" class="form-check-input" type="checkbox" value="Certification" id="TexteBox2">
                                <label class="form-check-label" for="TexteBox2">Certification (AOP, Certifié par, ...)</label>
                            </div>
                            <div class="form-check">
                                <input name="Texte" class="form-check-input" type="checkbox" value="Fromage à ppc" id="TexteBox3">
                                <label class="form-check-label" for="TexteBox3">Fromage à pâte prec&eacute;e cuite</label>
                            </div>
                            <div class="form-check">
                                <input name="Texte" class="form-check-input" type="checkbox" value="Raison sociale" id="TexteBox4">
                                <label class="form-check-label" for="TexteBox4">Raison sociale</label>
                            </div>
                            <div class="form-check">
                                <input name="Texte" class="form-check-input" type="checkbox" value="Ingredients" id="TexteBox5">
                                <label class="form-check-label" for="TexteBox5">Ingr&eacute;dients</label>
                            </div>
                            <div class="form-check">
                                <input name="Texte" class="form-check-input" type="checkbox" value="Valeursnutritionnelles" id="TexteBox6">
                                <label class="form-check-label" for="TexteBox6">Valeurs nutritionnelles</label>
                            </div>
                            <div class="form-check">
                                <input name="Texte" class="form-check-input" type="checkbox" value="Conservation" id="TexteBox7">
                                <label class="form-check-label" for="TexteBox7">Conditions de conservation (A conserver entre +4°C et +8°C)</label>
                            </div>
                            <div class="form-check">
                                <input name="Texte" class="form-check-input" type="checkbox" value="Consommation" id="TexteBox8">
                                <label class="form-check-label" for="TexteBox8">Conditions de Consommation (A consommer de préférence avant le :)</label>
                            </div>
                            <div class="form-check">
                                <input name="Texte" class="form-check-input" type="checkbox" value="Lot" id="TexteBox9">
                                <label class="form-check-label" for="TexteBox9">Lot</label>
                            </div>
                            <div class="form-check">
                                <input name="Texte" class="form-check-input" type="checkbox" value="Poidsnet" id="TexteBox10">
                                <label class="form-check-label" for="TexteBox10">Poids net</label>
                            </div>
                        </div>
                        <h4>Date</h4>
                        <div class="mb-3">
                            <div class="form-check">
                                <input name="Date" class="form-check-input" type="checkbox" value="DateConso" id="DateBox1">
                                <label class="form-check-label" for="DateBox1">Date de consommation</label>
                            </div>
                            <div class="form-check">
                                <input name="Date" class="form-check-input" type="checkbox" value="DateEmballage" id="DateBox2">
                                <label class="form-check-label" for="DateBox2">Date d'emballage</label>
                            </div>
                        </div>
                        <h4>Logo</h4>
                        <div class="mb-3">
                            <div class="form-check">
                                <input name="Logo" class="form-check-input" type="checkbox" value="Estompille" id="LogoBox1">
                                <label class="form-check-label" for="LogoBox1">Estompille DSV</label>
                                <div class="d-flex align-items-center">
                                    <img class="img-fluid" src="images/DSV.PNG" alt="" style ="width: 100px;height: 50px"/>
                                </div>
                            </div>
                            <div class="form-check">
                                <input name="Logo" class="form-check-input" type="checkbox" value="Tri" id="LogoBox2">
                                <label class="form-check-label" for="LogoBox2">Tri</label>                            
                                <div class="d-flex align-items-center"> 
                                    <img class="img-fluid"  src="images/Tri film.PNG" alt="" style ="width: 100px;height: 50px"/>
                                </div> 
                            </div>
                            <div class="form-check">
                                <input name="Logo" class="form-check-input" type="checkbox" value="Pochat" id="LogoBox3">
                                <label class="form-check-label" for="LogoBox3">Logo Pochat et Fils</label>
                                <div>
                                    <img class="img-fluid" src="images/Tri film.PNG" alt="" style ="width: 100px;height: 50px"/>
                                </div>
                            </div>
                        </div>
                        <h4>Prix</h4>                  
                        <div class="mb-3">
                            <div class="form-check">
                                <input name="Prix" class="form-check-input" type="checkbox" value="Prixaukilo" id="PrixBox1">
                                <label class="form-check-label" for="PrixBox1">Prix par 100g</label>
                            </div>
                            <div class="form-check">
                                <input name="Prix" class="form-check-input" type="checkbox" value="Prixapayer" id="PrixBox2">
                                <label class="form-check-label" for="PrixBox2">Prix du produit</label>
                            </div>
                        </div> 
                        <h4>Poids</h4>
                        <div class="mb-3">
                            <div class="form-check">
                                <input name="Poids" class="form-check-input" type="checkbox" value="PoidsNet" id="PoidsBox1">
                                <label class="form-check-label" for="PoidsBox1">La valeur du poids net</label>
                            </div>
                            <div class="form-check">
                                <input name="Poids" class="form-check-input" type="checkbox" value="Tare" id="PoidsBox2">
                                <label class="form-check-label" for="PoidsBox2">Tare</label>                            
                            </div>
                        </div>
                        <h4>Code à barre</h4>                  
                        <div class="mb-3">
                            <div class="form-check">
                                <input name="Code" class="form-check-input" type="checkbox" value="Code01" id="CodeBox1">
                                <label class="form-check-label" for="CodeBox1">Code à barre (format EAN 13)</label>
                            </div>
                            <div class="form-check">
                                <input name="Code" class="form-check-input" type="checkbox" value="Code128" id="CodeBox2">
                                <label class="form-check-label" for="CodeBox2">Code à barre (format Code 128)</label>
                            </div>
                        </div>
                        <button type="button" class="btn btn-danger" id="affinerRecherche">Trouvez votre masque</button>                     
                        <button type="button" id="annulerFiltre" class="btn btn-secondary">Revenir à la page d'accueil</button>
                    </form>
                </div>
                

                <div id ="zoneAffichage" class="col-9">

                </div>
            </div>
        </div>


        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script> 
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script><!-- Bootstrap -->
        <script src="js/fonctionsUtiles.js" type="text/javascript"></script>
    </body>
</html>
