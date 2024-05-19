Program arithmetique;
uses wincrt;
Var
		nombre : integer;
		i, j, k, t : integer;

Begin

		write('Entrer un nombre : ');
		read(nombre);
		 i := 0; j := 0;
		for i := 1 to nombre Do
		Begin
				if (nombre mod i = 0) and (i <> nombre) Then
				Begin
						writeln('Le nombre ',i,' est diviseur propre de ',nombre);
						j := j +i;
				end;
		end;
		writeln;
		writeln('===============================================');
		writeln('La somme des diviseurs propres de ',nombre,' est ',j);
		writeln('===============================================');

			t := 0;
			for k := 1 to nombre Do
			Begin
			  if (nombre mod k = 0) Then
					    t := t +1;
			end;
			 if t = 2 Then
			 Begin
			     writeln;
			     writeln('======================================');
			     writeln('Le nombre ',nombre,' est un nombre premier');
					 writeln('======================================');
			 end;

			 		if j = nombre Then
					Begin
					     writeln;
					     writeln('===================================');
					     writeln('Le nombre ',nombre,' est un nombre parfait');
					     writeln('===================================');
					end;
					
		ReadKey
end.