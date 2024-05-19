Program equation_2_nd_degrer;
uses wincrt;
Var
		A, B, C : real;
		X, X1, X2 : real;
		delta : real;

PROCEDURE si_A_est_egale_a_0;
Begin
   writeln;
	 writeln('Comme que A = 0');
	 writeln('L''equation est du 1er degrer maintement');
	 writeln;

		if B = 0 Then
		if C = 0 Then
			write('Toute reels est solution ')

			Else
			write('Impossible mon frr')

		Else
		writeln;
		X := -C / B;
		writeln('La solution est = ', X:0:2);

		writeln('S = {', X:0:2, '}');
		writeln;

end;

PROCEDURE si_delta_est_0;
Var
		X_0 : real;
Begin
 X_0 := -B / 2*A;
 writeln('La solution est egale à X0 = ', X_0:0:2);
 writeln('S = {',X_0:0:2,'}');
end;

Begin
		writeln('Programme pour calcluer une equation du second deger ');
		writeln;
		write('Entrer la valeur de A : ');
		read(A);

		write('Entrer la valeur de B : ');
		read(B);

		write('Entrer la valeur de C : ');
		read(C);

		if A = 0 Then
			begin
			si_A_est_egale_a_0;
			end;

	  writeln;
		delta := B*B -4*A*C;
		writeln('Dela est egale a ',delta:0:2);
		writeln;

		if ( delta > 0 ) then
		Begin
				X1 := (( -B + sqrt(delta)) / (2*A));
				X2 := (( -B - sqrt(delta)) / (2*A));

				writeln(' X1 = ', X1:0:2, ' et X2 = ', X2:0:2);
				writeln(' s = {',X1:0:2,';',X2:0:2,'}');

		end;

		if delta < 0 Then
		Begin
				writeln('Delta est inferieur à 0 ');
				write('Donc cette equation n''a pas de suliton ');
		end;

		if delta = 0 then
		Begin
			si_delta_est_0;
		end;

END.