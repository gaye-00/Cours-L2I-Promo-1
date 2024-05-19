let tab = ["images/img1.jpg", "images/img2.jpg", "images/img3.jpg"];

// tab[3] = "images/images(5).jpg";

function affiche(t, pos) {
	if(pos == "h") {
		for(img of t)
			document.writeln("<img src = '" + img + "' width = '300' heigth = '400' alt = 'une image' >" );

	}

	else if(pos == "v") {
		for(img of t) {
			document.writeln("<img src = '" + img + "' width = '300' heigth = '400' alt = 'une image' >" );
			document.writeln("<br>");
		}
	}
			
	document.writeln("<br>");
}

// function affiche(t) {
// 	for (let i = t.length - 1; i >= 0; i--)
// 		document.writeln("<img src = '" + t[i] + "' width = '300' heigth = '400' alt = 'une image' >" );
	
// 	document.writeln("<br>");
// }
// affiche(tab);

affiche(tab, "v");