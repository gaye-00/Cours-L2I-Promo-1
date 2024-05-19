Program convestion_en_base_10;
Uses WinCrt;
Var
		nombre, binaire, som, i : Integer;
		T : Array[1..4] of Integer;
Function puissance_2(nombre : Integer) : Integer;
Var i, puis : Integer;
Begin
		puis := 2;
		for i := 1 to (nombre -1) Do
			puis := puis * 2;

		puissance_2 := puis;
end;

BEGIN

		write('Entrer un nombre en binaire dont le 1er chiffre est 1 : ');
		read(nombre);

		i := 4;
		Repeat
				 binaire := nombre mod 2;
				 T[i] := binaire;
				 nombre := nombre div 2;
				 i := i - 1;
		Until (nombre = 0);

		for i := 1 to 4 Do
		Begin
				if (T[i] <> 1) and (T[i] <> 0) Then
				Begin
						while (T[i] <> 0) and (T[i] <> 1) Do
						Begin
								writeln;
								writeln('Le nombre entrer doit être egale en binaire');
								write('Entrer encore le nombre en binaire : ');
								read(nombre);

								i := 4;
						Repeat
				 				 binaire := nombre mod 2;
								 T[i] := binaire;
								 nombre := nombre div 2;
								 i := i - 1;
					  Until (nombre = 0);
						end;
				end;
		end;


		while (T[1] <> 1) Do
		Begin
				writeln;
				writeln('Le premier chiffre du nombre doit être egale à 1');
				write('Entrer encore le nombre en binaire : ');
				read(nombre);
		end;

		som := 0;
		for i := 3 DownTo 1 Do
				som := som + T[i] * (puissance_2(i));

		writeln;
		writeln('Le nombre ',nombre,' en base 10 est : ',som);

		readkey;
END.