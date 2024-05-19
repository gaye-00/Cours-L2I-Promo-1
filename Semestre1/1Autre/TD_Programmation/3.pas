Program exercice_td2_3_3;
uses wincrt;
Var
	 i,N,t :Integer;

Begin

		write('Entrer un nombre : ');
		read(i);
		t := i;
		N := i + 1000;

		for i := i to N Do
		Begin
				writeln(t);
				t := t + 1;
		end;

end.