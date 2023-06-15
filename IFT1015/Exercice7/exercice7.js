//Auteur: Daniel El-Masri (20096261)
//Date: 19 Novembre 2017
//Exercice 7: Ce code permet de calculer des cheques de paie en fonction des heures de travail et du salaire de chaque employées

var fs = require("fs");

var readFile = function (path) { //fonction pour lire le contenu de fichiers
    return fs.readFileSync(path).toString();
};

var writeFile = function (path, texte) { //fonction pour ecrire des fichiers
    fs.writeFileSync(path, texte);
};

var lireCSV = function (path) {

    var decouperEnLignes = function (contenu) {
	var lignes = contenu.split("\n");
	if(lignes[lignes.length - 1] == "") {
	    lignes.pop()
	}
	return lignes;
    };
    
    var lignes = decouperEnLignes(readFile(path));
    var resultat = [];
    for (var i = 0; i<lignes.length; i++) {
	resultat.push(lignes[i].split(","));
    }
    return resultat;
};
