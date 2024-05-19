Program nombre_premier;
var nb : Longword;
	i : Integer; ok : Boolean;
Begin 

	repeat
		write('Entrer un nombre : ');
		readln(nb);
	until (nb > 1);

	i := 2; ok := true;
	while ((i < (nb div 2)) and (ok)) do
	begin
		if (nb mod i <> 0) then
			i := i + 1

		else
		begin
			ok := false;
			writeln(i,' | ',nb);
		end;
	end;

	if (ok) then
		writeln(nb,' est un nombre premier')

	else
		writeln(nb,' n''est pas premier');

End.