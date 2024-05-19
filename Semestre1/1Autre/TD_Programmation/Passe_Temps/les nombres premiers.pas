	Program les_nombres_premiers;
	uses wincrt;
	Var nombre, i : LongInt;
			compte : integer;
	
	BEGIN
	
			nombre := 2; compte := 0;
			while (nombre <> 0) Do
			Begin
					for i := 2 to (nombre div 2) Do
					Begin
							if (nombre mod i) = 0 Then
								compte := 1;
					end;
	
					if (compte = 0) Then
						writeln(nombre);
						
					nombre := nombre + 1;
					compte := 0;
			end;
	
	END.