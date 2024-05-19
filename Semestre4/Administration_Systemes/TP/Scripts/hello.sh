#!/bin/bash
function hello () {
	echo "hello " $1;
}

#hello Abdoulaye
read -p "Donner le nom : " nom;
hello $nom
#hello $2
	
function max() {
	if [[$1 -gt $2]]; then
		echo $1" est plus grand";
	else
		echo $2" est plus grand";
	fi
}

read -p "Dooner x et y : " x y;

max $x $y
