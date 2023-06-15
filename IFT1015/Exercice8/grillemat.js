//Daniel El-Masri (20096261)

var fs = require("fs");

var readFile = function (path) {
    return fs.readFileSync(path).toString();
};

var writeFile = function (path, text) {
    return fs.writeFileSync(path, text);
};

var grilleMat = function (table) {
    var i = 0;
    while (i<table.length) {
	var text = tab[i].toString();
	var upDown = Array(text.length);
	upDown = upDown.fill("-").toString();
	var leftRight = "|" + text + "|";
	for(var i=0; i<upDown.length; i++) {
	    upDown = upDown.replace(",","");
	}
	upDown = "+" + upDown + "+";
	console.log(upDown);
	console.log(leftRight);
	console.log(upDown);
	i++;
    }
};
