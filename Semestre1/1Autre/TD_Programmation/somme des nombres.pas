Program somme_des_nombres;
uses wincrt;
Var N, reste, somme, i : integer;

BEGIN

		write('Entrer un nombre : ');
		read(N);

		i := 0; reste :=0; somme := 0;
		for i := 1 to N Do
		Begin
				reste := N mod 10;
				somme := somme + reste;
				N := N div 10;
		end;

		writeln('La somme des nombres est ',somme);

END.