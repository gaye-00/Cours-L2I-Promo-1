Program algo2_additions_successive2;
uses wincrt;
Var nb1, nb2, result, i : Integer;

BEGIN

		Repeat
				write('Entrer un nombre positif : ');
				read(nb1);
		Until (nb1 > 0);

		Repeat
				write('Entrer un autre nombre positif : ');
				read(nb2);
		Until (nb2 > 0);

		i := 0; result := 0;
		while (nb2 <> 0) Do
		Begin
				for i := 1 to nb2 Do
				result := result + nb1;
				writeln('Le produit des nombres est : ',result);
				writeln;

				write('Entrer encore un nombre : ');
				read(nb2);

				i := 0; nb1 := result; result := 0;
		end;

		writeln('Le produit des nombres entrees est nule quelque soit les autres valeurs entres');

	ReadKey
END.