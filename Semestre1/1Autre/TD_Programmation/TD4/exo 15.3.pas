Program gr_chiffres;
Uses WinCrt;
Var nombre, grand : Integer;
Function grandchiffres(n : Integer) : Integer;
Var pl_gr, reste : Integer;
Begin
		pl_gr := 0;
		Repeat
				reste := n mod 10;
				if (pl_gr < reste) Then
					pl_gr := reste;
				n := n div 10;
		Until (n <= 0);
		grandchiffres := pl_gr;
end;

BEGIN

		write('Entrer un entier : ');
		read(nombre);

		grand := grandchiffres(nombre);
		writeln('Le plus grand chiffre de l''entier est : ',grand);

		readkey;
END.