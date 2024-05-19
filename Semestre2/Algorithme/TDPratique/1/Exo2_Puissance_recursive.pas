Program puissance_recursive;
Uses WinCrt;
Var nb1, nb2 : Integer;
Function permut(a, b : Integer) : Real;
Begin
		if (b = 1) Then
			permut := a

		Else if (b = 0) Then
			permut := 1

		Else if (b > 0) Then
			permut := a * permut(a, b-1)

		Else
			permut := 1 / permut(a, b+1); //for i := to -1 Do//blem
end;

BEGIN

		write('Entrer un premeir entier : ');
		readln(nb1);

		write('Entrer un deuxieme entier : ');
		readln(nb2);

		writeln(nb1,' puissance ',nb2,' est : ',permut(nb1,nb2):0:2);


		readkey;
END.