Program fonction_max;
Uses WinCrt;
Var fonc_x, fonc_y , maximum: real;
Function max1(x, y : real) : real;
Begin
		if (x > y) Then
			max1 := x

			Else
				max1 := y;
end;

BEGIN

		write('Entrer un 1er nombre reel : ');
		read(fonc_x);

		write('Entrer un 2eme nombre reel : ');
		read(fonc_y);

		maximum := max1(fonc_x, fonc_y);

		writeln('Le maximum des deux reels est : ',maximum:0:2);

END.