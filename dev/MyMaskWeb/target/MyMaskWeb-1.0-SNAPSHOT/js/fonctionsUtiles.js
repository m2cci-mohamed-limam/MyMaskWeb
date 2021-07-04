/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function goToConnexion() {
    window.location = '/connexion.jsp';
}

//function check() {
//    let ele = document.getElementsByName('Texte');
//    let flag = 0;
//    for (let i = 0; i < ele.length; i++) {
//        if (ele[i].checked)
//            flag = 1;
//    }
//    if (flag === 1)
//        document.getElementById('trouverMonMasque').disabled = false;
//}

/* fonction pour afficher tous les masques lors de l'ouverture de la page elementsMasque.jsp*/

function initialiserLesSpectacles(urlServeur, zoneAModifier) {
    $.ajax({
        url: urlServeur,
        method: 'POST'}
    ).then(
            function fullFillHandler(data) {
                document.getElementById(zoneAModifier).innerHTML = data;
            },
            function rejectHandler(jqXHR, textStatus, errorThrown) {
                alert("Rejet de la requête");
            }
    ).catch(function errorHandler(error) {
        alert("Erreur " + error);
    }
    );
}

function affinerRecherche() {
    $.ajax({
        url:"affichageMasque",
        method: 'POST',
        data:$("#filtreMasque").serialize()}
    ).then(
            function fullFillHandler(data) {
                document.getElementById("zoneAffichage").innerHTML = data;
            },
            function rejectHandler(jqXHR, textStatus, errorThrown) {
                alert("Rejet de la requête");
            }
    ).catch(function errorHandler(error) {
        alert("Erreur " + error);
    }
    );

}
/* appel à la fonction précédente et faire le lien avec la zone d'affichage */
initialiserLesSpectacles("ListerMasquesCtrler", "zoneAffichage");

document.getElementById("affinerRecherche").addEventListener("click", affinerRecherche);

$("#annulerFiltre").click(function () {
    window.location.href = "/MyMaskWeb/";
});