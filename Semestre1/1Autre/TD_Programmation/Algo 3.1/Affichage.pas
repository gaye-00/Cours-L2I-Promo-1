Program affichage;
Uses WinCrt;
Var i, j, max : Integer;

BEGIN

		max := 1;
		for j := 1 to 5 Do
		Begin
			for i := 1 to max Do
					write('*');
			writeln;
			max := max + 1;
		end;

		max := 4;
		for j := 1 to 4 Do
		Begin
			for i := 1 to max Do
					write('*');
			writeln;
			max := max - 1;
		end;


		readkey;
END.