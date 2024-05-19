Program puissance_recursive;
Uses WinCrt;
Var nb1, nb2 : Integer;
Function puis(a, b : Integer): Real;
Begin
		if (b = 0) Then
			puis := 1

		Else
			puis := a * puis(a,b-1);

end;

Begin

		write('Entrer un un nombre : ');
		readln(nb1);

		Repeat
				write('Entrer un nombre qui est la puissance : ');
				readln(nb2);
		Until (nb2 > 0);

		writeln(nb1,' puissance ',nb2,' = ',puis(nb1,nb2):0:2);
end.