Program fonc_boucle;
Var  nm : Integer;
Function boucle(n : Integer): Integer;
Begin
		if (n >= 1) Then
		Begin
			boucle := boucle(n-1);
			writeln(n);
		end;
end;

Begin

		write('Entrer un nombre : ');
		readln(nm);
		boucle(nm);
		
end.
