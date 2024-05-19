#!/bin/bash

echo -n "Donner une reponde : "
read reponse

case $reponse in
	o* | O* ) reponse="OUI" ;;
	n* | N* ) reponse="Non" ;;
	* ) reponse="Je sais pas !" ;;
esac

echo "La reponse est : " $reponse

# o* | O* ) reponse = "OUI" ;;
# Case.sh: ligne 8: reponse : commande introuvable
# Cette syntaxe si dessous va retourner une erreur à cause
# de des espaces entre l'affectation