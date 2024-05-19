Program partie_entier;
Uses WinCrt;
Var n : Real;
		nb, i, j : Integer;

BEGIN

		Write('Entrer un nombre : ');
		read(n);

		nb := Trunc(n);
		writeln('La partie entier du nombre est : ',nb);

		i := 1; j := 0;
		while (i <= n) Do
		Begin
				j := j + 1;
				i := i  + 1;
		end;

		writeln('La partie entier du nombre est : ',j);

		
		ReadKey;
END.