Program recherche_sequentielle;
uses WinCrt;
Type tab = Array[1..5] of Integer;
Var t : tab;
		i, x, y : Integer;

BEGIN

		i := 0;
		for i := 1 to 5 Do
		Begin
				write('Donner la valeur de tab[',i,'] : ');
				read(t[i]);
		end;

		write('Donner la valeur à rechercher dans le tableau : ');
		read(x);

			i := 0; y := 0;
			for i := 1 to 5 Do
			Begin
				if x = t[i]  Then
				Begin
						y := i;
						writeln('La valeur ',x,' se trouve dans le tableau à la position ',y);
				end;
			end;

			if (y = 0) Then
				writeln('La valeur ',x,' ne se  trouve pas dans le tableau');

END.