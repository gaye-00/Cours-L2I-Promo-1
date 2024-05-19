alert("Alerte Chargement de la page !");

function alerte() {
	alert("Je suis une alerte sur le monde!");
}

// document.getElementsByClassName("image")[0].addEventListener("onmouseover", alerte);
// document.getElementsById("image").addEventListener("onmouseover", alerte);
document.getElementById("monImage").onmouseover = function() {
  alert("Alerte Vous avez passé sur l'image!");
};
// document.getElementById("monImage").onmouseover = alerte;
// Focntionne correctement;

// document.getElementById("clik").addEventListener("onclick", alerte);
document.getElementById("clik").onclick = function() {
	alert("Alerte Vous avez cliquer sur le bouton !");
};

// document.getElementById("ap").addEventListener("onkeypress", alerte);
document.getElementById("ap").onkeypress = function() {
	alert("Alerte Vous avez appuyer sur un bouton !");
}


function colorier() {
	document.body.style.backgroundColor = "yellow";
}
document.getElementById("col").onclick = colorier;

function change_apparence() {
	element = document.getElementById("apa");
	element.style.color = "white";
	element.style.backgroundColor = "red";	
}
// document.getElementById("apa").addEventListener("onclick", change_apparence);
document.getElementById("apa").onclick = change_apparence;

function changeImage(img){
	document.getElementById('bigImage').src=img;
}

// document.getElementById("Image01").onmouseover = function(){
// 	document.getElementById('bigImage').src = "img3.png";
// }

// document.getElementById("Image01").onmouseover = function(){
// 	document.getElementById('bigImage').src="img/img3.png";
// };
// document.getElementById("Image02").onmouseover = function(){
// 	document.getElementById('bigImage').src='img/img3.png';
// };