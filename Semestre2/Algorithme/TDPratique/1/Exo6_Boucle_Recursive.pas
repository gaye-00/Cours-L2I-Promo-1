Program boucle_recursive_croissante;
Uses WinCrt;
Var nb : Integer;
Function boucle(n : Integer) : Integer;
Begin

		if (n >= 1) Then
		Begin
				boucle := boucle(n-1);
				writeln(n);
		end;
end;

BEGIN

		write('Entrer un entier : ');
		read(nb);
		boucle(nb);

		readkey;
END.