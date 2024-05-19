program carre_etoile ;
Uses WinCrt;
var i, j, n : integer ;

Begin

	write ('Donner un nombre entier positif : ');
	readln (n);
	
	for i:=1 to n do
	begin
	for j:=1 to n do
		write (' * ');
		writeln ();
	end;
	end .
end.