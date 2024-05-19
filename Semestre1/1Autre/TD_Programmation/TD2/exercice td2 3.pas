program exercivce_td2_3;
uses wincrt;
Var
		x, y : real;

Begin

	write('Entrer le nombre x : ');
	read(x);

	write('Entrer le nombre y : ');
	read(y);

	if (x = y) Then
		writeln('les deux nombres entres sont egaux');

		if (x < y)  Then
		 begin
		 writeln('Le maximum est ', y:0:2);
		 exit;
		 end;

			if (x > y) then
			 writeln('Le maximum est test ', x:0:2);

END.