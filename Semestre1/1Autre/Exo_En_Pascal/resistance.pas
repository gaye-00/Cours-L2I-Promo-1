program resistance;
uses wincrt;
Var
		N : integer;

Begin
		write('Entrer la valeur du nombre : ');
		read(N);

		if N < 10 Then
		writeln('Entrer un nombre plus grand svp');
			if N > 20 Then
				writeln('Entrer un nombre plus petit svp');
					if (N >= 10) and (N <= 20) then
					begin
						writeln('La note entrer est bonne maintenant MERCI');
						exit;
						end;

		repeat
		writeln('La note entrer n''est pas bonne ');
		writeln;
		write('Enter encore la note stp : ');
		read(N);

		if N < 10 Then
		writeln('Entrer un nombre plus grand svp');
			if N > 20 Then
				writeln('Entrer un nombre plus petit svp');
				if (N >= 10) and (N <= 20) then
					writeln('La note entrer est bonne maintenant MERCI');
		until (N >= 10) and (N <= 20)

		
END.