Program test_nombre_chanceux;
uses wincrt;
Var nombre, chance : LongInt;
		i, j, ii, t : LongInt;


BEGIN

 nombre := 0;

		i := 0; j := 0; ii := 0; t := 0; chance := 0; nombre := 0;
	 while nombre > -1 Do
	 Begin
	 	ii := 0; t := 0; j := 0; i := 0;
	 		 writeln(nombre);

			 for i := 0 to (nombre-1) Do
			 Begin
					   chance := nombre + i + Sqr(i);
						 for ii := 1 to chance Do
						 Begin
				     			if (chance mod ii = 0) Then
					     		 t := t +1;
						 end;
						 
				 				if t = 2 Then
				    				j := j + 1;
			 end;

				if  nombre = (j - 1) Then
					Begin
					     writeln;
					     writeln('===================================');
					     writeln('Le nombre ',nombre,' est un nombre chanceux');
					     writeln('===================================');
							 exit;
					end;
					
				nombre := nombre +1;
		end;



END.