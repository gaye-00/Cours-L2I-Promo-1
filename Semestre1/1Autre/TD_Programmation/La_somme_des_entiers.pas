Program multiple;
Uses WinCrt;
Var nombre, som, i : Integer;

BEGIN

		write('Entrer un nombre : ');
		read(nombre);

		som := 0;
		if (nombre > 0) Then
			for i := 1 to nombre Do
				som := som + i

				Else
					for i := nombre to -1 Do
						som := som + i;

			writeln('La somme des nombres est : ',som);

		READKEY
END.