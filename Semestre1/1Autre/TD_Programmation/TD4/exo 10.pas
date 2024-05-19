Program exo_10;
uses wincrt;
Var car : char;
		chaine : string[20];
		trouver : Boolean;
		position, i : Integer;

//On veut le nombre d'occurences du caractere pas s'il est dans le tableau ou pas
BEGIN

		write('Entrer un caractere : ');
		readln(car);

		Repeat
				write('Entrer une chaine de caractere : ');
				readln(chaine);
		until (Length(chaine) <= 20);

		trouver := false;
		for i := 1 to 20 Do
		Begin
				if (chaine[i] = car) Then
				Begin
				 		trouver := true;
						position := i;
				end;
		end;

		writeln;
		if (trouver = true) Then
			writeln('Le caractere ',car,' est dans la chaine à la postion ',position)

			else
				writeln('Le caractere ',car,' n''est pas dans chaine');


	 Readkey;
END.