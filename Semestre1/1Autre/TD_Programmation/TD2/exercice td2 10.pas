Program exercice_td2_2_10;
uses wincrt;
Var
	 x, y : real;
	 car : Char;

Begin

	write('Entrer le premier nombre : ');
	read(x);

	write('Entrer le deuxime nombre : ');
	read(y);

	write('Entrer le caractere : ');
	readln(car);

	{while (y = 0) Do
	Begin
			writeln('Cet nombre ne peut pas etre nul');
			write('Entrer encore le nombre svp : ');
			read(y);
	end;

	writeln('Enter le caractere (+, -, *, /) : ');
	read(car);}
	case car of
	'+' : writeln('L''addition est ', x+y:0:2);
	'-' : writeln('La soustraction est ', x-y:0:2);
	'*' : writeln('La mustiplicatione est ', x*y:0:2);
	'/' : writeln('La division est ', x/y:0:2);
	end;
	 
end.