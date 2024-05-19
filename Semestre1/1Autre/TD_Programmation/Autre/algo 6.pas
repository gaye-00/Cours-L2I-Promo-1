program trois_varible;
uses wincrt;
Var
		x, y,z, nombre : real;

Begin
		write('Enter la valeur de x : ');
		read(x);

		write('Enter la valeur de y : ');
		read(y);

		write('Enter la valeur de z : ');
		read(z);

		write('Enter la valeur de nombre : ');
		read(nombre);

		while (x > y) do
		Begin
				writeln('Le nombre de x entrer n''est pas bon car ', x:0:2 ,' > a ' , y:0:2);
				write('Enter encore le nombre x svp : ');
				read(x);
		end;

		while (y > z) do
		Begin
				writeln('Le nombre de y entrer n''est pas bon ',y:0:2,' > a ' , z:0:2);
				write('Enter encore le nombre y svp : ');
				read(y);
		end;

		if (nombre > z) Then
		 Begin
		  writeln('Les trois nombres les plus petits sont ', x:0:2,' ,' ,y:0:2, ' et ', z:0:2);
			exit;
		 end;

		  if (nombre < x) Then
			Begin
		   writeln('Les trois nombres les plus petits sont ', nombre:0:2,' ,' ,x:0:2, ' et ', y:0:2);
			 exit;
			end;

			  if (nombre >= x) and (nombre <= y) Then
				Begin
		     writeln('Les trois nombres les plus petits sont ',x:0:2,' ,' ,nombre:0:2, ' et ', y:0:2);
				 exit;
				end;

				  if (nombre >= y) and (nombre <= z) Then
					Begin
		       writeln('Les trois nombres les plus petits sont ', y:0:2,' ,' ,nombre:0:2, ' et ', z:0:2);
					 exit;
					end;
end.