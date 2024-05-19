Program recherche_par_dichotomique;
uses wincrt;
Const max_c = 1000;
Type tableau = array[1..max_c] of Integer;
Var tab : tableau;
		i, element, n , min, max, milieu: integer;
		trouver : Boolean;

BEGIN

		Repeat
				 write('Entrer le nombre d''element du tableau : ');
				 read(n);
		until (n > 0) and (n <= 1000);

		writeln;
		i := 1;
		write('Entrer l''element tab[',i,'] : ');
		read(tab[i]);
		
		for i := 2 to n Do
		Begin
				write('Entrer l''element tab[',i,'] : ');
				read(tab[i]);
				while (tab[i -1] > tab[i]) Do
				Begin
						writeln('La valeur entrer doit etre superieur à ',tab[i - 1]);
						write('Entrer encore l''element tab[',i,'] : ');
						read(tab[i]);
				end;
		end;

		writeln;
		write('Entrer l''element à rechercher dans le tableau : ');
		read(element);
		
		min := 1; max := n; i := 1; trouver := false;
		while (trouver = false) and (min <= max) Do
		Begin
		    milieu := (min + max) div 2;
				if (element = tab[milieu]) Then
					trouver := true

					else if (element > tab[milieu]) Then
						min := milieu + 1

						else if (element < tab[milieu]) Then
							max := (milieu - 1);
		end;

		if (trouver = true) Then
			writeln('L''element ',element,' est trouver dans le tableau à la position ',milieu)

			Else
			writeln('L''element ',element,' n''est pas dans le tableau');

		readkey;
END.