Program Simulateur;
Uses wincrt;
Var
x,y: real;
op : char;
 Begin
 Writeln('Simulateur de calculatrice');
 Write('Entrer la valeur de x : ');
 Read(x);
 Write('Entrer la valeur de  : ');
 Read(y);
 
 Writeln('choisir un opérateur:+  ','-  ','*  ','/  ');
 write('Entrer la valeur de l''operateur');
 read(op);

 //Case op Of
 
 if op = '+' then
 write('C''est une addition',x+y);
 
	if op = '-' then
  write('C''est une soustraction',x-y);

	 if op = '*' then
		write('C''est une multiplication',x*y);

		if op = '/' then
 			write('C''est une division ',x/y)

Else write('opération non existante');
 //End;

 End.