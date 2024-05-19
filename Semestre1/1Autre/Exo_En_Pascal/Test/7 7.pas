Program exercice_td2_3_7;
uses wincrt;
Var nombre, fact : integer;
    i : Integer;

Begin

    i := 1; fact := 1;
		writeln('Calcule de la factorielle');
		write('Entrer le nombre : ');
		read(nombre);

		for i := 1 to nombre Do
			 fact := i*fact;

		writeln('Le factorielle est ', fact);

end.