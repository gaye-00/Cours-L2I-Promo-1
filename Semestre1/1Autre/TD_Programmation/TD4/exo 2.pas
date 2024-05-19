Program exo1;
uses wincrt;
Type tab = Array[1..10] of Integer;
Var T : tab;
		i : Integer;
Procedure appel;
Var i : Integer;
Begin
		i := 0;
		for i := 1 to 10 Do
		Begin
				write(i,' : Entrer un nombre : ');
				read(T[i]);
		end;
end;

BEGIN

			appel;

			 writeln;writeln;
				for i := 1 to 10 Do
					write(T[i],' ');

		Readkey;
END.