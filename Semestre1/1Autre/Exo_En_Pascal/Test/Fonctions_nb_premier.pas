Program nb_premiers;
Uses WinCrt;
Var nombre, i : Integer;
Function premier(n : Integer) : Boolean;
Var j : Integer;
Begin
	premier := true;
	for j := 2 to n div 2 Do
		if (n mod j = 0) Then
			premier := False;
end;

BEGIN

		Repeat
				write('Enter un nombre positif superieur à 1 : ');
				readln(nombre);
		Until (nombre > 1);

		for i := 2 to nombre Do
			if (premier(i) = True) Then
				writeln(i);

		READKEY
END.