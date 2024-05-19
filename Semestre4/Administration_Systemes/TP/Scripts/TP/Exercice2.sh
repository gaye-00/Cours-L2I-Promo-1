#!/bin/bash

# 2. Écrire un script somme2.sh qui affiche la somme de deux nombres
# récupérés en paramètres de ligne decommande.

echo "La somme est : " $(($1 + $2))

# 3. Écrire un script nb param qui renvoie le nombre de ses paramètres de ligne de commande.
echo "Le nombre de paramètres de la ligne de commande est : $#"