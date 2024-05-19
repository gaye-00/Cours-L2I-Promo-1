#!/bin/bash

read -p "Donner une reponse : " rep

while [[ $rep != "OUI" && $rep != "NON" ]]; do
	echo -n "Donner une reponse valide : "
	read rep
done

echo "La reponse est " $rep
echo 


until [[ $rep1 != "NON" && $rep1 != "OUI" ]]; do
	read -p "Donner une reponse : " rep1
done

echo "La reponse est " $rep1
echo 