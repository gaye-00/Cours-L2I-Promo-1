Program exo1;
uses wincrt;
Type tab = Array[1..10] of Integer;
Var T : tab;
		i : Integer;

BEGIN

		for i := 1 to 10 Do
			T[i] := 0;

				for i := 1 to 10 Do
					write(T[i],' ');
					
END.