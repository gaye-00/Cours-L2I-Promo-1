#!/bin/bash

read -p "Donner un entier postif : " nombre

if [ $nombre -ge 10 -a $nombre -le 20 ]; then
	echo "T'a la moyenne : "  $nombre
fi

# read -p "donner x : " x
# if [[ $x -ge 10 && $x -le 20 ]];then
# 	echo "Moyenne"
# fi