Program exercice_td2_3_4;
uses wincrt;
Var
	 n, x : integer;

Begin
		n := 1; x := 1;
		write('Entrer le nombre que tu veut diviser : ');
		read(n);

		while (n < 1) Do
		Begin
				writeln;
				writeln('Le nombre entrer est non valide');
				write('Entrer encore le nombre que tu veut diviser : ');
				read(n);
		end;

		for x := 2 to n Do
		Begin
				if (n mod x  = 0) Then
				 Begin
						 write(x,' ;');
				 end;
		end;

end.