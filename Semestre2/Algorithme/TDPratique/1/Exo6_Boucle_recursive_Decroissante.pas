Program boucle_recursive_Decroissante;
Uses WinCrt;
Var nb : Integer;
Function boucle(n : Integer) : Integer;
Begin

		if (n >= 1) Then
		Begin
				writeln(n);
				boucle := boucle(n-1);
		end;
end;

BEGIN

		write('Entrer un entier : ');
		read(nb);
		boucle(nb);

		readkey;
END.