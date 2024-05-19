program exercivce_td2_6;
uses wincrt;
Var
	x, y : integer;

Begin

	write('Entre le premier nombre : ');
	read(x);

	write('Entre le deuxime nombre : ');
	read(y);

	//produit := x * y;

	if ((x > 0) and (y > 0)) or ((x < 0) and (y < 0)) then
	 writeln('Le produit est positif')

	 	Else if ((x < 0) and (y > 0)) or ((x > 0) and (y < 0)) then
		 writeln('Le produit est négatif')

		 	Else
		   writeln('Le produit est nul');

		   {if (x = 0) or (y = 0) Then
		    writeln('Le produit est nul');

				if (x = 0) and (y = 0) Then
				 writeln('Le produit est nul'); }

END.