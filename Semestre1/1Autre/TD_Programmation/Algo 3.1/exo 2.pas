Program nombre_premier;
Uses WinCrt;
Var gb_nombre : Integer;
Procedure nb_premier(nombre : Integer);
Var i, compteur : Integer;
Begin
		compteur := 0;
		for i := 2 to (nombre div 2) Do
		Begin
				if (nombre mod i = 0) Then
					compteur := 1;
		end;

		if (compteur = 0) Then
			writeln('Le ',nombre,' est premier')

			Else
				writeln('Le ',nombre,' n''est pas premier');
end;

BEGIN

		write('Entrer un nombre : ');
		read(gb_nombre);

		nb_premier(gb_nombre);

		readkey
END.