document.getElementById("p1").innerHTML = "Un nouveau paragraphe";

let attributs = document.getElementsByTagName("textarea")[0].attributes;
attributs[0].value = "10";

element = document.getElementsByTagName("textarea")[0];
element.setAttribute("cols", "10");
element.style.color = "red";