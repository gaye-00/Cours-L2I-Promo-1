Program arithmetique;
uses wincrt;
Var
		nombre : integer;
		i, j : integer;

Begin

		write('Entrer un nombre : ');
		read(nombre);
		 i := 0; j := 0;
		for i := 1 to nombre Do
		Begin
				if (nombre mod i = 0) and (i <> nombre) Then
				Begin
						writeln('Le nombre ',i,' est un diviseue propre de ',nombre);
						j := j +i;
				end;
		end;

		writeln('La somme des diviseurs propres est ',j);

end.