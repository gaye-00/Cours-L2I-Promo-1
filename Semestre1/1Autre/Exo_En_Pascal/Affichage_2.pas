Program affichages;
Uses WinCrt;
Var i, j : Integer;

BEGIN

		for i := 1 to 5 Do
		Begin
			for j := 1 to i Do
				write('*');
			writeln;
		end;

		for i := 4 DownTo 1 Do
		Begin
			for j := 1 to i Do
				write('*');
			writeln;
		end;


		ReadKey
END.