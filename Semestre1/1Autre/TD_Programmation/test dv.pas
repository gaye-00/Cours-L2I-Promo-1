Program test_dv;
uses wincrt;
Var i, j, note : Integer;

BEGIN

		i := 1;
		write('Entrer le nombre entier ',i,' : ');
		read(note);

		j := 0;
		if (note mod 2 <> 0) Then
			j := j +1;

			while (note <> -1) Do
			Begin
					i := i +1;
					write('Entrre le nombre entier ',i,' : ');
					read(note);

					if (note mod 2 <> 0) Then
					 j := j +1;
			end;

			writeln;
			writeln('Le nombre d''entiers pairs est : ',j);
			writeln('Le pourcentage par rapport aux nombre d''entiers est ',(100*j) div i,'%');


END.