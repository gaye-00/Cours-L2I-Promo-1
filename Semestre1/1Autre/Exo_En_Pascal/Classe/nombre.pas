program nombre_paire;
uses wincrt;
var nombre : Integer;

Begin
    write('Entrer un nombre : ');
		read(nombre);

		while (nombre > 0) do
		Begin
		    if (nombre mod 2 = 0) Then
					writeln(nombre);
					
				nombre := nombre -1;
		end;


end.