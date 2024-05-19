Program test_procedure;
uses wincrt;
Type Matrice = Array[1..100,1..100] of Integer;
Var A, B, C : Matrice;
		nb_lignes, nb_colonnes, i, j : Integer;
		somme_globale : LongInt; 

Procedure affectation_p(Var affect : Matrice ; nb_l, nb_c : Integer);
Var i, j : Integer;
Begin
		for i := 1 to nb_l Do
			for j := 1 to nb_c Do
			Begin
				write('Entrer la valuer de [',i,' ',j,'] : ');
				read(affect[i][j]);
			end;
end;

Procedure affichage_p(Var affiche : Matrice; nb_l, nb_c : Integer);
Var i, j : Integer;
Begin
		for i := 1 to nb_l Do
		Begin
			for j := 1 to nb_c Do
					write(affiche[i][j],' ');
					writeln;
		end;
end;

Procedure somme_p(somme_a , somme_b : Matrice; Var somme : Matrice; nb_l, nb_c : Integer);
Var i, j : Integer;
Begin
		for i := 1 to nb_l Do
			for j := 1 to nb_c Do
				somme[i][j] := somme_a[i][j] + somme_b[i][j];
end;

BEGIN

		Repeat
				write('Entrer le nombre de lignes : ');
				read(nb_lignes);
		Until (nb_lignes >= 1);

		Repeat
				write('Entrer le nombres de colonnes : ');
				read(nb_colonnes);
		until(nb_colonnes >= 1);
		writeln;writeln;

		writeln('Donner les valeurs de la martice A');
		A[1][1] := 0; B[1][1] := 0; C[1][1] := 0;
		affectation_p(A, nb_lignes, nb_colonnes);
		writeln;writeln;

		writeln('Donner les valeurs de la martice B');
		affectation_p(B, nb_lignes, nb_colonnes);
		writeln;writeln;

		affichage_p(A, nb_lignes, nb_colonnes);
		writeln;
		affichage_p(B, nb_lignes, nb_colonnes);
		writeln;writeln;

		somme_p(A, B, C, nb_lignes, nb_colonnes);
		i := 0; j := 0; somme_globale := 0;
		for i:= 1 to nb_lignes Do
		Begin
			for j := 1 to nb_colonnes Do
			somme_globale := somme_globale + C[i][j];
		end;
		
		//writeln('La somme de la matrice A et B est : ', C[nb_lignes][nb_colonnes]);
		writeln;
		writeln('La somme de la matrice A et B est : ', somme_globale);

	ReadKey;
END.