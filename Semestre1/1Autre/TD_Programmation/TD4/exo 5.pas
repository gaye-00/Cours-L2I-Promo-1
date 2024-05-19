Program exo_5;
uses wincrt;
Var T : array[1..10] of Integer;
		i, max, min, pos_max, pos_min : Integer;

BEGIN

		for i := 1 to 10 Do
		Begin
				write(i,' : Entrer la valeur : ');
				read(T[i]);
		end;

		max := T[1]; min := T[1]; pos_max := 0; pos_min := 0;
		for i := 2 to 10 Do
		Begin
				if T[i] > max Then
				Begin
						max := T[i];
						pos_max := i;
				end;

					if T[i] < min Then
					Begin
							min := T[i];
							pos_min := i;
					end;
		end;

		writeln;
		writeln('La valeur maximale est ', max,' à la position ',pos_max,' du  tableau');
		writeln('La valeur minimale est ', min,' à la position ',pos_min,' du  tableau');

	 readkey;
END.