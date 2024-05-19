program exercivce9;
uses wincrt;
Var
	 x, y, z : real;

Begin

	write('Entrer la valeur de x : ');
	read(x);

	write('Entrer la valeur de y : ');
	read(y);

	write('Entrer la valeur de z : ');
	read(z);

  writeln;
	writeln('La moyenne des trois nombes est ', (x + y + z)/3:0:2);

END.