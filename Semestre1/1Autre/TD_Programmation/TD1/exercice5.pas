program exercivce5;
uses wincrt;
Var
	 x :integer;

Begin
		write('Entrer le nombre dont tu veut la racine carree : ');
		read(x);
		writeln;

		while (x < 0) Do
		Begin
				writeln('Le nombre entrer est non valide');
				write('Entrer encore le nombre svp : ');
				read(x);
		end;

		write('La racine carree du nombre est ', sqrt(x):0:2);

END.