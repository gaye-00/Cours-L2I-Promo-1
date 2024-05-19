#!/bin/bash

# 1. Proposer une fonction produit qui calcule et affiche le produit de deux entiers.

# read -p "Donner un entier : " x;
# read -p "Donner un entier : " y;

# function produit() {
# 	result = $(($1 * $2))
# 	echo $result

# }

# produit $x $y ;

function produit() {
  local num1=$1
  local num2=$2
  local result=$((num1 * num2))
  echo "Le produit de $num1 et $num2 est : $result"
}

read -p "Entrez le premier nombre : " num1
read -p "Entrez le second nombre : " num2

produit $num1 $num2

# 3. Proposer un script table mult qui affiche la table de multiplication par 6.

echo "Table de multiplication par 6 :"
# for i in {1..10}; do
for i in $(seq 1 10); do
  result=$((6 * $i))
  echo "6 x $i = $result"
done
