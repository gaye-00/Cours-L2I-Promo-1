Program nombre_de_chiffres;
uses wincrt;
Var N, compteur, i : Integer;

BEGIN

		write('Entrer un nombre entier : ');
		read(N);

		if (N >= 0) Then
		Begin
				i := 10; compteur := 1;
				while N >= i Do
				Begin
						compteur := compteur + 1;
						i := i *10;
				end;
				writeln('Le nombre de chiffres de ',N,' est ',compteur);
		end

		else
		if (N < 0) Then
		Begin
				i := -10; compteur := 1;
				while N <= i Do
				Begin
						compteur := compteur + 1;
						i := i *10;
				end;
				writeln('Le nombre de chiffres de ',N,' est ',compteur);
		end;

END.