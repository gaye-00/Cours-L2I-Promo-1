function rectangle(){
	let largeur, longeur;

	largeur = prompt("Donner la largeur : ");
	longeur = prompt("Donner la longeur : ");

	largeur = parseFloat(largeur);
	longeur = parseFloat(longeur);
	surface = longeur*largeur;
	perimetre = (longeur + largeur)*2;

	alert("La surface du rectangle est : " +surface+ " m²" +"\n"+
		"Le perimetre du rectangle est : " +perimetre + " m");

	// onmouseover capter de que la souris passe
}