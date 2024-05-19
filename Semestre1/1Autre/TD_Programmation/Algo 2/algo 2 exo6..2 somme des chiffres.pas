Program somme_des_chiffres;
uses wincrt;
Var N, nombre_10 : integer;

BEGIN

		write('Entrer un nombre entier : ');
		read(N);

		if (N >= 0) Then
		Begin
			if (N < 10) Then
				writeln('La somme des chiffres est ',N)

				Else
				Begin
						nombre_10 := 0;
						while (N >= 10) Do
						Begin
								N := N -10;
								nombre_10 := nombre_10 +1;
								if (nombre_10 = 10) Then
									nombre_10 := 1;
						end;
						writeln('La somme des chiffres est : ',nombre_10 + N);
				end;
		end

		Else
		Begin
				writeln('Test');
		end;



END.