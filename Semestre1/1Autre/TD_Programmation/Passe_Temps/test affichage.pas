Program affichage;
Uses WinCrt;
Var i, j : Integer;

BEGIN

		for j := 1 to 5 Do
		Begin
			for i := 1 to j Do
					write('*');
			writeln;
		end;

		for j := 1 to 4 Do
		Begin
			for i := 4 DownTo j Do
					write('*');
			writeln;
		end;


		readkey;
END.