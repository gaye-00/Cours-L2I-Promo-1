Program exo1;
uses wincrt;
Type tab = Array[1..10] of real;
Var T : tab;
		i , j : Integer;
		nombre : real;
		
BEGIN

			i := 0;
		for i := 1 to 10 Do
		Begin
				write(i,' : Entrer un nombre : ');
				read(T[i]);
		end;

			 writeln;
			 write('Entrer le nombre que tu veut chercher : ');
			 read(nombre);

			 		j := 0;
					for i := 1 to 10 Do
					Begin
				 	 if (T[i] = nombre) Then
						Begin
								j := i;
								writeln('Le nombre ',nombre:0:2,' est dans le tableau à la position : ',j);
						end;
					end;

					if j = 0 Then
						writeln('Le nombre ',nombre:0:2,' n''est pas dans le tableau');
						

		Readkey;
END.