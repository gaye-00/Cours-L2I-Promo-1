Program prgrammation_modulaire;
Uses WinCrt;
Type tab = Array[1..1000] of Integer;
Var A : tab;
		taille, caractere, i, retoure : Integer;
Procedure saisie(var X : tab; n : Integer);
Var i : Integer;
Begin
		for i := 1 to n Do
		Begin
				write('Entrer l''entier numero ',i,' : ');
				read(X[i]);
		end;
end;
Procedure InverserTab(var X : tab; n : Integer);
Var i, m : Integer;
Begin
		for i := 1 to (n div 2) Do
		Begin
				m := X[i];
				X[i] := X[n-i+1];
				X[n-i+1] := m;
		end;
end;
Function Occurence(X : tab; n, v : Integer) : Integer;
Var i, cmp1 : Integer;
Begin
		cmp1 := 0;
		for i := 1 to n Do
			if (X[i] = v) Then
				cmp1 := cmp1 + 1;

		Occurence := cmp1;
end;

BEGIN

		Repeat
				 write('Entrer la taille du tableau : ');
				 read(taille);
		Until (taille >= 0);

		saisie(A,taille);
		writeln;
		for i := 1 to taille Do
		write(A[i],' ');

		writeln;
		write('Entrer le caratere à chercher dans le tableau : ');
		read(caractere);

		retoure := Occurence(A,taille,caractere);
		writeln('Le nombre d''occurrence de ',caractere,' est : ',retoure);

		writeln;
		InverserTab(A,taille);
		writeln('Apres l''inverse du tableau');
		for i := 1 to taille Do
			write(A[i],' ');


		readkey;
END.