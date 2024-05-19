	Program les_nombres_premiers;
	uses wincrt;
	Var F : Text;
			nombre, i : LongInt;
			compte : integer;

	BEGIN

      Assign(F, 'les_nb_premiers.dat');
			ReWrite(F);
			nombre := 2; compte := 0;
			while (nombre <> 0) Do
			//while not Eof(F) Do
			Begin
					for i := 2 to (nombre div 2) Do
					Begin
							if (nombre mod i) = 0 Then
								compte := 1;
					end;

					if (compte = 0) Then
					Begin
							writeln(nombre);
							write(F, nombre,'   ');
					end;

					nombre := nombre + 1;
					compte := 0;
			end;
			Close(F);

	END.