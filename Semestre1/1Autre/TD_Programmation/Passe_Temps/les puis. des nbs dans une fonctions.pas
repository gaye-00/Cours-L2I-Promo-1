Program les_puissances;
Uses WinCrt;
Var N : real;
		P, i : Integer;
Function puissance(f_N : real; f_p : Integer) : real;
Var X : real;
		i : Integer;
Begin
		X := 1;
		if (f_p > 0) Then
		Begin
				for i := 1 to f_p Do
					X := X * f_N;

					puissance := X;
		end

		else if (f_p < 0) Then
		Begin
				for i := f_p to -1 Do
					X := X / f_N;

					puissance := X;
		end

		else
			puissance := 0;
end;

BEGIN

		write('Entrer un nombre : ');
		read(N);

		write('Enter la puissance du nombre : ');
		read(P);

		for i := -P to P Do
			writeln('Nombre : ',N:0:2,' Puissance : ',i,' est : ',puissance(N,i):0:4);

		readkey;
END.