//Daniel El-Masri (20096261)

var fs = require("fs");

var readFile = function (path) {
    return fs.readFileSyn(path).toString();
};

var writeFile = function (path, text) {
    return fs.writeFileSync(path, text);
};

var lireCSV = function (path) {

    var decouperEnLignes = function (contenu) {
	var lignes = contenu.split("\n");
	if(lignes[lignes.length - 1] == "") {
	    lignes.pop();
	}
	return lignes;
    };

    var lignes = decouperEnLignes(readFile(path));
    var resultat = [];
    for(var i = 0; i<lignes.length; i++) {
	resultat.push(lignes[i].split(","));
    }
    return resultat;
};

var cheques = function (entree1, entree2) {
    var matriceUn = lireCSV("heures.csv");
    var matriceDeux = lireCSV("salaires.csv");
    var matriceTrois = [];
    var i = 0;

    while(i<matriceUn.length && i<matriceDeux.length) {
	var matrixUn = matriceUn[i];
	var matrixDeux = matriceDeux[i];
	var matrixTrois = [];

	if(matrixUn[i] == matrixDeux[i]) {
	    matrixTrois = matrixUn[i];
	    matriceTrois.push(matrixTrois);
	    i++;
	}
	else {
	    matrixTrois = matrixUn[i] * matrixDeux[i];
	    matriceTrois.push(matrixTrois);
	    i++;
	}
    }
};
