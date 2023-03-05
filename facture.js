var ListePrix = document.getElementsByClassName("prix");
var ListeQte = document.getElementsByClassName("qte");
var ListeDesc = document.getElementsByClassName("desc");


function ajouterLigne(){
    var newLi = document.getElementById("modeleLigne").cloneNode(true);
    var lastLi = document.getElementById("lastLigne");
    var pere = document.getElementsByClassName("tb").firstChild.nextSibling;
    pere.insertBefore(newLi, lastLi);
}

function remplir(){
    const tabDESC = new Array("portable", "bureau" , "ram 8go", "clef usb 16go", "souris", "ecran 17 pouces");

    for (var i=0; i< ListeDesc.length;i++){
        var idesc = Math.floor(tabDESC.length *Math.random()); // Nb entre 0 et le nb d'élément -1 de tabdesc
        ListeDesc[i].value = tabDESC[idesc];

        var qte = Math.floor(10 *Math.random()+1);
        var prix = Math.floor(100 *Math.random()+1);
        ListeQte[i].value = qte; ;
        ListePrix[i].value = prix;

    }
    
}

function calculate(){
    var total = 0;
    var listeprix = document.getElementsByClassName("prix");
    var listeTlt = document.getElementsByClassName("totalLigne");
    var listeqte = document.getElementsByClassName("qte");

    for (let i = 0; i < listeprix.length; i++) {
        listeTlt[i].value = (listeqte[i].value) * (listeprix[i].value);
        total = total + (listeTlt[i].value);

    }
    var total = document.getElementsByClassName("totalLigne");
    let result = 0

    for (let i = 0; i< total.length; i++) {
        result += Number(total[i].value)
    }
    var soustotal = document.getElementById("soustotal")
    soustotal.value = result

    var c = document.getElementsByClassName("soustotal")
    var d = document.getElementById("remise")
    var remise = c * d / 2
    remise.value = remise 
    
    }
