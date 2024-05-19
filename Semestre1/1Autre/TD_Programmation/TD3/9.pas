Program exercice_td2_3_9;
uses wincrt;
Var
  T : Array [1..1000] of real;
  somme, moyenne : real;
  i,nombre : Integer;

Begin

		write('Entrer le nombre d''elements dont vous voulez la moyenne : ');
		read(nombre);

		

    i := 0; somme := 0;
		for i := 1 to nombre Do
		Begin
				writeln;
				write(i,' : Entrer le nombre : ');
				read(T[i]);

				somme := somme + T[i];
				moyenne := somme / nombre;
		end;

    writeln;
		writeln('La moyenne des nombres est ', moyenne:0:2);

end.