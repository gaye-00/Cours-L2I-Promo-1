Program pourcentage;
uses wincrt;
Const max_car = 2000;
Type chaine_car = Array[1..max_car] of Char;
Var S : chaine_car;
		S_chaine : String;
		element : Char;
		taille, long, i, j, incre, espace : Integer;
		total : real;

BEGIN

		Repeat
				 write('Entrer la taille de la chaine : ');
				 readln(taille);
		until (taille > 1);

		writeln;
		Repeat
				 write('Entrer la chaine de caractere : ');
				 readln(S_chaine);

				 long := Length(S_chaine);

				 	if (long <> taille) Then
						writeln('La taille entrer doit etre egale à la longueur de la chaine');
		until (long = taille);

		for i := 1 to long Do
			S[i] := S_chaine[i];

			espace := 0;
			for i := 1 to long Do
			Begin
					if S[i] = ' ' Then
						espace := espace + 1;
			end;

			writeln;
			writeln('La longueur de la chaine est : ',long);
			writeln('Le nombre de caractere dans la chaine est : ',long - espace);
			writeln;
			
			total := 0;
			for i := 65 to 90 Do
			Begin
					incre := 0;
					element := Chr(i);

					for j := 1 to long Do
					Begin
							if (S[j] = element) Then
								incre := incre + 1;
					end;

						element := chr(i + 32);
						for j := 1 to long Do
						Begin
								if (S[j] = element) Then
									incre := incre + 1;
						end;

							if (incre <> 0) Then
							Begin
								writeln('Le pourcentage de ',element,'(',incre,') est : ',(100 * incre) / (long - espace):0:2,'%');
								total := total + ((100 * incre) / (long - espace))
							end;
			end;

			writeln;
			writeln('La totalité des pourcentages est ',total:0:3,'% ');

	 READKEY
END.