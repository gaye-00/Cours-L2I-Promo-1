program exercivce10;
uses wincrt;
Var
		x, y, z, moy : real;


Begin

		write('Entrer la 1ere note : ');
		read(x);

		write('Entrer la 2eme note : ');
		read(y);

		write('Entrer la 3eme note : ');
		read(z);

		moy := (x*3 + y*2 + z*5)/10;
		writeln('La moyenne des 3 notes est ', moy:0:2);
	

END.