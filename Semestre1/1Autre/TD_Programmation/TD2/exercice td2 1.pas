program exercivceT2_1;
uses wincrt;
Var
	a, b : real;

Begin

  write('Entrer le premier nombre : ');
	read(a);

	write('Entrer le deuxieme nombre : ');
	read(b);

  writeln;
	if (a < b) then
	write('-1');

		if (a = b) Then
		write('0');

			if ( a > b) Then
			write('1');

END.