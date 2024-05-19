#!/bin/bash

read -p "Donner un nombre positif : " nombre

while true; do
	read -p "Donner un nombre positif : " nombre
	if [[ $nombre -gt 0 ]]; then
		break
	fi
done

# echo "Le nombre entrer est $nombre"

# read -p "Donner un nombre positif : " nombre
# while [[ $nombre -lt 0 ]]; do
# 	read -p "Donner un nombre valide " nombre
# done

# read -p "Donner un 2eme nombre positif : " nombre1

# until [[ $nombre1 -gt 0 ]]; do
# 	read -p "Donner un nombre valide " nombre1
# done