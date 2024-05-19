Program somme_des_entiers;
uses wincrt;
Var n, s, i, g, rest : LongInt;

BEGIN

		write('Entrer un nombre : ');
		read(n);

		s := 0; g := 0;
		for i := 1 to n Do
		Begin
				rest := n mod 10;
				
				if rest > g Then
					g := rest;

				s := s + rest;
				n := n div 10;
		end;

		writeln('La somme est ',s,' et le plus grand chiffre est ', g);
END.