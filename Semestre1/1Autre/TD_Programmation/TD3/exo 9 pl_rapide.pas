Program exo_rapite;
uses WinCrt;
Var n, i: Integer;
		nombre, som : real;

BEGIN

		Repeat
				write('Entrer le le nombre de nombre : ');
				read(n);
		until (n > 0);

		writeln;
		som := 0;
		for i := 1 to n Do
		Begin
				write('Entrer le nombre numero ',i,' : ');
				read(nombre);

				som := som + nombre;
		end;

		writeln;
		writeln('La mayenne des nombres réels entrès est : ', (som / n):0:2);


		readkey;
END.