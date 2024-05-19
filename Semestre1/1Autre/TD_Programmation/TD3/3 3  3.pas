Program exercice_td2_3_3;
uses wincrt;
Var
	 i,N :Integer;

Begin

		write('Entrer un nombre : ');
		read(i);
		N := i + 10;

		while (i <= N) Do
		Begin
				writeln(i);
				i := i + 1;
		end;

end.