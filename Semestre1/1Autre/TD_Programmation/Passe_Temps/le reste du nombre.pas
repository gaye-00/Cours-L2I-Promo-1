Program les_restes;
Uses WinCrt;
Var nombre, reste : Integer;

BEGIN

		write('Entrer un nombre : ');
		read(nombre);

		while (nombre <> 0) Do
		Begin
				reste := nombre mod 10;
				writeln(reste);
				nombre := nombre div 10;
		end;


END.