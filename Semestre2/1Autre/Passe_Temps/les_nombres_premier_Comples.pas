Program les_nombres_premiers;
Uses WinCrt;
Var F : Text;
		i, j : LongInt;
		ok : Boolean;

BEGIN

		Assign(F, 'les_nombres_premiers2_prapide.dat');
		rewrite(F);

						i := 3;
						while (i > 0) Do
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
								i := i + 2;
						end;
		Close(F);

		readkey;
END.