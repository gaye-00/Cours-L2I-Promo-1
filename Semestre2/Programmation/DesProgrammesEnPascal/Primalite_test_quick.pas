Program primalite_test_quick;
var i, nombre, racine : Longword;
	ok : Boolean;
///////////////////////////////////////////////////////////////////////////
Begin // Debut du prgramme principal
	writeln('Test primalite');

	writeln;
	repeat
		write('Donner un nombre entier : ');
		readln(nombre);
	until (nombre > 1);

    ok := true; i := 2;
	racine := trunc(sqrt(nombre));
	while ((i <= racine) and (ok)) do
	begin
		if (nombre mod i = 0) then
		   ok := false
		else
		   i := i + 1;
	end;

	writeln;
	if (ok) then
		writeln(nombre,' est un nombre premier')
	else
		writeln(nombre,' n''est pas un nombre premier');			

End.  // Fin du prgramme principal