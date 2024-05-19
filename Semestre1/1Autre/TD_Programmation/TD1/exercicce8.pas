program exercivce8;
uses wincrt;
Const
		PI = 3.1415;
Var
		rayon, perimetre, surface : real;

Begin

	write('Donner le rayon du cercle : ');
	read(rayon);

	while (rayon <= 0) Do
	Begin
			writeln;
			writeln('Le rayon entrer n''est pas bon');
			write('Entrer encore le rayon svp : ');
			read(rayon);
			writeln;
	end;
	

	perimetre := 2*PI*rayon;
	surface := sqr(rayon)*PI;

	writeln;
	writeln('Le perimetre du cercle est ', perimetre:0:2);
	writeln('L''air du cercle est ', surface:0:2);
	
END.