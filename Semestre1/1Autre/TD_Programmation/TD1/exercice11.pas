program exercivce11;
uses wincrt;
Var
	x, y , t : real;

Begin

	write('Entrer la premier valeur : ');
	read(x);

	write('Entrer la seconde valeur : ');
	read(y);

  writeln;
	writeln('Avant echange 1er valeur est ',x:0:2,' et 2eme valeur est ',y:0:2);

	t := x;
	x := y;
	y := t;

	 writeln;
	 writeln('Apres echange 1er valeur est ',x:0:2,' et 2eme valeur est ',y:0:2); 

END.