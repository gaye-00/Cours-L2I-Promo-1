Program fonction_max;
Uses WinCrt;
Var fonc_x, fonc_y, fonc_z , maximum: real;
Function max1(x, y, z : real) : real;
Begin
		if (x >= y) and (x >= z) Then
			max1 := x

			else if (y > x) and (y >= z) Then
				max1 := y

				Else
					max1 := z;
end;

BEGIN

		write('Entrer un 1er nombre reel : ');
		read(fonc_x);

		write('Entrer un 2eme nombre reel : ');
		read(fonc_y);

		write('Entrer un 3eme nombre reel : ');
		read(fonc_z);

		maximum := max1(fonc_x, fonc_y, fonc_z);

		writeln('Le maximum des deux reels est : ',maximum:0:2);

END.