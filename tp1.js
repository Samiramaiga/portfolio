function calcul_moyenne()
{
    var note1=prompt("donner la premiere note : ");
    var coef1=prompt("donner le coef : ");
    var note2=prompt("donner la deuxieme note :");
    var coef2=prompt("donner le coef : ");
    var note3=prompt("donner la troisieme note :");
    var coef3=prompt("donner le coef : ");

    var somme = Number(note1*coef1)+Number(note2*coef2)+Number(note3*coef3);

    

    document.write ("Voici la somme : " + somme +"<br>");
    var coef = Number(coef1)+Number(coef2)+Number(coef3);
    var moyenne= (somme/coef);
    document.write("Voici la moyenne : " + moyenne+"<br>");

    if(moyenne<10)
    document.write("Vous etes redoublant")
    else
    document.write("Vous etes admis");
}

function test_age()
{
     var age= prompt("donner votre age");
     if (age <18)
    { 
    document.write("vous etes mineur");
    document.bgColor="red";
    }
     else 
     {
     document.write("vous etes majeur");
     document.bgColor="green"
    }
}

function simple_affichage()
{
    var nom = prompt("donner votre nom");
    var prenom = prompt("donner votre prenom");

    document.write("<div style='margin:auto; border:2px solid blue; width:300px ; color:red; '>");

    document.write("Bonjour " + prenom + " " + nom);
    document.write("</div>");

}

function test_couleur()
{
    var couleur = prompt("choisir une couleur");
    if (couleur == "vert" || couleur=="VERT")
    document.body.style.background="#BCF5BA";
    

        else if (couleur =="rouge"|| couleur=="ROUGE")
    document.body.style.background="#CA4E3E";
    else if (couleur =="bleu"|| couleur=="BLEU")
    document.body.style.background="#81D5CB";
    else
    document.write("couleur non comprise");
   
}