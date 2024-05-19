Program algo2_additions_successive;
uses wincrt;
Var nb1, nb2, resultat, i : Integer;

BEGIN

		Repeat
				write('Entrer le 1er nombre positif : ');
				read(nb1);
		Until (nb1 > 0);

		Repeat
				write('Entrer le 2eme nombre positif : ');
				read(nb2);
		Until (nb2 > 0);

		i := 0; resultat := 0;
		for i := 1 to nb2 Do
		Begin
				resultat := resultat + nb1;
		end;

		writeln('Le produit des deux nombres est ',resultat);


END.