Program manipulation;
Uses WinCrt;
Const max = 2000;
Type tab = Array[1..2,1..max] of Real;
Var nb_L, nb_C, cmp, n, i, j : Integer;
		som, moy : Real;
		notes : tab;

BEGIN

		Repeat
				 write('Entrer le nombre de notes de l''Algorithme : ');
				 read(nb_L);
		Until (nb_L > 0);

		Repeat
				 write('Entrer le nombre de notes de Progromation : ');
				 read(nb_C);
		Until (nb_C > 0);

		writeln;
		for i := 1 to nb_L Do
		Repeat
				 write('Entrer la note de l''Algorithme numero ',i,' : ');
				 read(notes[1][i]);
		Until (notes[1][i] >= 0) and (notes[1][i] <= 20);

		writeln;
		for i := 1 to nb_C Do
		Repeat
				 write('Entrer la note de programmation numero ',i,' : ');
				 read(notes[2][i]);
		Until (notes[2][i] >= 0) and (notes[2][i] <= 20);

		writeln;
		cmp := 0; som := 0; n := nb_L;
		for i := 1 to 2 Do
		Begin
			for j := 1 to n Do
			Begin
					write(notes[i][j]:0:2,' ');
					som := som + notes[i][j];
			end;
			n := nb_C;
			writeln;
		end;

		writeln;
		moy := som / (nb_L + nb_C);
		writeln('La sommme des notes est : ',som:0:2);
		writeln('Lamyenne des notes est : ',moy:0:2);

		n := nb_L;
		for i := 1 to 2 Do
		Begin
			for j := 1 to n Do
				if (moy < notes[i][j]) Then
					cmp := cmp + 1;
			n := nb_C;
		end;
					

				//for i := 1 to nb_C Do
					//if (moy < notes[2][i]) Then
						//cmp := cmp + 1;

		writeln;
		writeln('Le nombre de notes superieur à la moyenne est : ',cmp);


		readkey;
END.