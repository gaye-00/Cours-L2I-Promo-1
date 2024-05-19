Program mannipulation_matrice;
uses wincrt;
const max_l = 1000; max_c = 1000;
Type Matrice = array[1..max_l,1..max_c] of Integer;
Var Mat : Matrice;
		i, j, min, max, element, som, L, C : Integer;
		moy : real;
		trouver : Boolean;

BEGIN

		Repeat
				 write('Entre le nombre de ligne de la matrice : ');
				 read(L);
		Until (L > 0) and (L <= 1000);

		Repeat
				 write('Entre le nombre de colonne de la matrice : ');
				 read(C);
		Until (C > 0) and (C <= 1000);

		writeln;
		for i := 1 to L Do
		Begin
			for j := 1 to C Do
			Begin
					write('Entre l''element de la matrice Mat[',i,' ',j,'] : ');
					read(Mat[i,j]);
			end;
			writeln;
		end;


			som := 0; min := Mat[1,1]; max := Mat[1,1];
			for i := 1 to L Do
				for j := 1 to C Do
				Begin
						som := som + Mat[i,j];

						if (Mat[i,j] > max) Then
							max := Mat[i,j];

							if (Mat[i,j] < min) Then
								min := Mat[i,j];
				end;

				writeln;
				write('Entrer l''element à rechercher dans le tableau : ');
				read(element);

				trouver := false; i := 1;
				while (trouver = false) and (i <= L) Do
				Begin
						j := 1;
						while (trouver = false) and (j <= C) Do
						Begin
								if (Mat[i,j] = element) Then
									trouver := true;
									j := j + 1;
						end;
						i := i + 1;
				end;

				writeln;
				moy := (som / (L * C));
				writeln('Le minimum des elements de la matrice est ',min);
				writeln('Le maximum des elements de la matrice est ',max);
				writeln('La somme des elements de la matrice est ',som);
				writeln('La moyenne des elements de la matrice est ',moy:0:2);

				writeln;
				if (trouver = true) Then
					writeln(element,' est dans la matrice à la position [',i-1,' ',j-1,']')

					Else
						writeln(element,' n''est pas dans la matrice');

		readkey;
END.