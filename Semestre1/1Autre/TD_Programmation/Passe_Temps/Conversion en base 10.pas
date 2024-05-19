Program base_10;
Uses WinCrt;
Var
		T : Array[1..4] of Integer;
		controle, binaire, nombre, i : Integer;

BEGIN

		write('Entrer un nombre binaire de 4 chiffres : ');
		read(nombre);

				 controle := nombre mod 10;

				 while (controle <> 0) and (controle <> 1) Do
				 Begin
				 		 writeln;
						 writeln('Les chiffres doivent être composer que de 0 et/ou de 1');
						 writeln;
						 
						 write('Entrer encore un nombre de 4 chiffres : ');
						 read(nombre);

						 controle := controle mod 10;
				 end;

		i := 4;
		Repeat
				 binaire := nombre mod 2;
				 T[i] := binaire;
				 nombre := nombre div 2;
				 i := i - 1;
		Until (nombre = 0);

		writeln;
		for i := 1 to 4 Do
			write(T[i]);


		readkey;
END.