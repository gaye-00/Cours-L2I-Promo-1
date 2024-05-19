Program surface_du_rectangle;
Uses WinCrt;
Var Longue, large : Real;
Function surface(a, b : Real): Real;
Begin
		if (b = 1) Then
			surface := a

		Else
			surface := a + surface(a,b-1);
end;

BEGIN

		write('Entrer la longueur du rectangle : ');
		readln(longue);

		write('Entrer la largeur du rectangel : ');
		readln(large);

		writeln('La surface du rectangle est : ',surface(longue, large):0:3);
		readkey;
END.