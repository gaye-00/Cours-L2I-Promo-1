Program fonc_somme;
Uses WinCrt;
Var nombre : Integer;
Function somme(n : Integer) : Integer;
Begin
		if (n = 1) Then
			somme := 1

		Else
			somme := n + somme(n-1);
end;

BEGIN

		write('Entrer un nombre entier : ');
		readln(nombre);

		writeln('La somme des entiers est : ',somme(nombre));


END.