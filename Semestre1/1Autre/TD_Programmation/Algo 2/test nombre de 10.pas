Program test_nombres_de_10;
uses WinCrt;
Var nombre_10, N : Integer;

BEGIN

		write('Entrer un nombre : ');
		read(N);
		
		nombre_10 := 0;
		while (N >= 10) Do
		Begin
				N := N -10;
				nombre_10 := nombre_10 +1;
				writeln(N+10 ,' - 10 = ',N,' || ',nombre_10,' fois');
					if (nombre_10 = 10) Then
					Begin
							nombre_10 := 1;
							writeln('==========');
					end;
		end;
		writeln('Le nombre de 10 est : ',nombre_10,' le reste est : ',N);
		writeln('La somme des chiffres est : ',nombre_10 + N);


END.