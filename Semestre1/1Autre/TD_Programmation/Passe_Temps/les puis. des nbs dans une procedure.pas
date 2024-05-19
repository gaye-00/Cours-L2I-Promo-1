Program puissance_test;
Uses WinCrt;
Var N, som : real;
	  P : Integer;
Procedure puissance(A : Integer; B : real; Var C : Real);
Var i  : Integer;
		fp : Real;
Begin
		fp := 1;
		for i := 1 to A Do
			fp := fp * B;

			C := fp;
end;

BEGIN

		som := 0;
		write('Donner un nombre : ');
		read(N);

		write('Donner sa puissance : ');
		read(P);

		puissance(P, N, som);

		writeln('Le nombre ',N:0:2,' puissance ',P,' est : ',som:0:4);



END.