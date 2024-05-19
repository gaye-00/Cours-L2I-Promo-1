#!/bin/bash


# 4. Écrire un script shell equation1 qui permet de résoudre une équation du premier degré
read -p "Entrez la valeur de a : " a
read -p "Entrez la valeur de b : " b

if [ $a -eq 0 ]; then
  if [ $b -eq 0 ]; then
    echo "L'équation est indéterminée."
  else
    echo "L'équation n'a pas de solution."
  fi
else
  x=$(echo "scale=2; -$b/$a" | bc)
  echo "La solution de l'équation est x = $x"
fi
