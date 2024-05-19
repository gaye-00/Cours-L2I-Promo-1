Program trois_valeurs;
Uses WinCrt;
Var nombre, reste, i, unite : Integer;

BEGIN

		//Repeat
				write('Entrer un nombre de 3 chiffres : ');
				read(nombre);
		//until (nombre >= 100) and (nombre <= 999);

		reste := 0; unite := 1;
		while (nombre <> 0) Do
		Begin
				reste := nombre mod 10;
				write(reste);
				
				for i := 2 to unite Do
					write('0');
				writeln;
					
				unite := unite + 1;
				nombre := nombre div 10;
		end;

		readkey;
END.