Program arithmetique;
uses wincrt;
Var
		nombre, n : integer;
		i, ii, j, t : integer;
		chance : LongInt;

Begin

		write('Entrer un nombre : ');
		read(nombre);
		 i := 0; j := 0; t := 0; n := nombre;
		for i := 1 to nombre Do
		Begin
				if (nombre mod i = 0) and (i <> nombre) Then
						//writeln('Le nombre ',i,' est diviseur propre de ',nombre);
						j := j +i;

					if (nombre mod i = 0) Then
					 t := t +1;
		end;
		writeln;
		writeln('===============================================');
		writeln('La somme des diviseurs propres de ',nombre,' est ',j);
		writeln('===============================================');

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

      writeln;writeln;
			i := 0; t := 0; j := 0; ii := 0; chance := 0;
			for i := 1 to (n - 1) Do
			Begin
			   t := 0; ii := 0;
			   //for i := 1 to nombre Do
				 //Begin
					   chance := n + i + Sqr(i);
						 for ii := 1 to chance Do
						 Begin
				     			if (chance mod ii = 0) Then
					     		 t := t +1;
						 end;
				 				if t = 2 Then
								Begin
					  				writeln(i-1,' : Le nombre ',chance,' est premier');
				    				j := j + 1;
								end;
				 //end;
			end;

				if  n = (j-1) Then
					Begin
					     writeln;
					     writeln('===================================');
					     writeln('Le nombre ',n,' est un nombre chanceux');
					     writeln('===================================');
					end;

		ReadKey
end.