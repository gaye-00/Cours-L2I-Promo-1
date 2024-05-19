Program exo4;
uses wincrt;
Type tab = Array[1..10] of real;
Var T : tab;
		i , sup : integer;
		notes, moy : real;

BEGIN

		i := 0; notes := 0;
		for i := 1 to 10 Do
		Begin
				write(i,' : Entrer un nombre : ');
				read(T[i]);
				notes := notes + T[i];
		end;

		writeln;
		moy := notes / 10;
		writeln('La moyenne des notes est : ',moy:0:2);
		
			sup := 0;
			for i := 1 to 10 Do
			Begin
					if T[i] > moy Then
						sup := sup + 1;
			end;

			writeln('Le nombres de notes superieure à la moyenne est ',sup);

	 Readkey;
END.