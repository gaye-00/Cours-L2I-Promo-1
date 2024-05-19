Program les_tableaux;
Uses WinCrt;
Type Tab = Array[1..2000] of Integer;
Var T1, T2 : Tab;
		i, n, m, X : Integer;
		ok : Boolean;

BEGIN

		Repeat
				 write('Enter la taille de T1 : ');
				 readln(n);

				 write('Enter la taille de T2 : ');
				 readln(m);
		Until (n > 0) and (m > 0);

		writeln;
		for i := 1 to n Do
		Begin
				write('Entrer la valeur T1[',i,'] : ');
				read(T1[i]);
		end;

		writeln;
		for i := 1 to m Do
		Begin
				write('Entrer la valeur T2[',i,'] : ');
				read(T2[i]);
		end;

		writeln;
		write('Entrer l''element à chercher dans le T1 : ');
		readln(X);

		i := 1; ok := False;
		while (i <= n) and (ok = False) Do
		Begin
				if (T1[i] = X) Then
					ok := True

					Else
						i := i + 1;
		end;

		if (ok = True) Then
			writeln('L''element que tu cherche est dans T1')

			Else
				writeln('L''element n''est pas dans le tableau');

		writeln;
		i := 1; ok := False;
		//if (n = m) Then
		While (i <= n) and (ok = False) Do
		Begin
				if (T1[i] <> T2[i]) Then
					ok := True

					Else
						i := i + 1;
		end;

		writeln;
		if (ok = False) Then
			writeln('T1 et T2 sont identique')

			Else
				writeln('T1 et T2 sont differents');

		writeln;
		i := 1; ok := False;
		while (i <= n-1) and (ok = False) Do
		Begin
				if (T1[i+1] < T1[i]) Then
					ok := True

					Else
						i := i + 1;
		end;

		writeln;
		if (ok = False) Then
			writeln('Le tableau est trie')

			Else
				writeln('Le tableau et non trie');
			

		READKEY
END.