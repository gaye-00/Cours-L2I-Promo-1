Program exercice_td2_3_4;
uses wincrt;
Var x : real;

Begin

		write('Entrer un nombre compris entre 0 et 20 : ');
		read(x);

		while (x < 0) Do
		Begin
		    writeln;
				write('Donnner un nombre plus grand svp : ');
				read(x);
		end;

		while (x > 20) Do
		Begin
		    writeln;
				write('Donnner un nombre plus petit svp : ');
				read(x);
		end;

    writeln;
		writeln('Le nombre entrer ',x:0:2,' est bon');

end.