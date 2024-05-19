Program exercice_td2_3_5;
uses wincrt;
Var T : Array [1..20] of real;
		i, j : Integer;
		grand : real;

Begin

		grand := 0;
    for i := 1 to 20 Do
		Begin
		 write(i,': Entrer successivement 20 nombres : ');
		 read(T[i]);

		   if (T[i] >= grand) Then
		    Begin
		 		    grand := T[i];
				    j := i;
		    end;

		end;

		writeln;
		writeln('Le nombre le plus grand est ', grand:0:2,' à la position ',j);

end.