program exercivce7;
uses wincrt;
Var
	Longueur, largeur, x : real;

Begin

  write('Entrer la longueur du rectangle : ');
	read(Longueur);

		write('Entrer la largeur du rectangle : ');
	read(largeur);

	x := (Longueur + largeur)*2;

	if (Longueur > 0) and (largeur > 0) Then
	write('Le perimetre du rectangle est ', x:0:2)

	Else
	while (Longueur <= 0 ) or (largeur <= 0 ) do
	begin
	writeln;
	writeln('Le nombre entrer n''est pas bon');
	writeln('Recrite le nombre svp ');
	writeln;
	
	 write('Entrer la longueur du rectangle : ');
	read(Longueur);

		write('Entrer la largeur du rectangle : ');
	read(largeur);

	If (Longueur > 0 ) and (largeur > 0 ) then
	begin
	writeln;
	x := (Longueur + largeur)*2;
	write('Le perimetre du rectangle est ', x:0:2);
	exit;
	end;
	end;
	

END.