	Program les_nombres_premiers;
	uses wincrt;
	Var nombre, i : LongInt;
			compte : integer;

	BEGIN

			write('Entrer un nombre pour voir si c''est premier ou pas : ');
			read(nombre);

			 compte := 0;
					for i := 2 to (nombre div 2) Do
					Begin
							if (nombre mod i) = 0 Then
								compte := 1;
					end;

					if (compte = 0) Then
						writeln('Le nombre ',nombre,' entrer est premier')

						else
							writeln('Le nombre ',nombre,' entrer n''est pas premier');

	END.