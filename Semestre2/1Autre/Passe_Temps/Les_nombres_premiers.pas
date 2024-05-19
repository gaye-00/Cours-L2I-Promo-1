Program les_nombres_premiers;
Uses WinCrt;
Var F : Text;
		i, j : LongInt;
		ok : Boolean;

BEGIN

		Assign(F, 'les_nombres_premiers.dat');
		Reset(F);

						i := 2;
						while (i > 5000000) Do
						Begin
								ok := False; j := 2;
								while (j <= (i div 2)) and (ok = False) Do
								Begin
										if (i mod j = 0) Then
											ok := True

										Else
											j := j + 1;
								end;

								if (ok = False) Then
								Begin
										writeln(i);
										write(F,'	',i);
								end;
								i := i + 1;
						end;
		Close(F);

		readkey;
END.