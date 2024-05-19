Program somme_chiffres;
Uses WinCrt;
Var nombre, som : Integer;
Function somchiffres(n : Integer) : Integer;
Var som1, reste : Integer;
Begin
		som1 := 0;
		while (n > 0) Do
		Begin
				reste := n mod 10;
				som1 := som1 + reste;
				n := n div 10;
		end;
		somchiffres := som1;
end;

BEGIN

		write('Entrer un entier : ');
		read(nombre);

		som := somchiffres(nombre);

		writeln('La somme des chiffres de l''entier est : ',som);

		readkey;
END.