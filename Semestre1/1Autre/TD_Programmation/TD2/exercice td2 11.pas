Program equation_2_nd_degrer;
uses wincrt;
Var
		A, B, C : real;
		X, X1, X2 : real;
		delta : real;

PROCEDURE si_A_est_egale_a_0;
Var
		Bf1, Cf1, Xf1 : real;
Begin
   Bf1 := B;
	 Cf1 := C;

	 writeln;
	 writeln('Comme que A = 0');
	 writeln('L''equation est du 1er degrer maintement');
	 writeln;

		if Bf1 = 0 Then
		  if Cf1 = 0 Then
			 write('Toute reels est solution ')

			Else
			write('Impossible mon frr')

		Else
		writeln;
		Xf1 := -Cf1 / Bf1;
		writeln('La solution est = ', Xf1:0:2);

		writeln('S = {', Xf1:0:2, '}');
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
		writeln('De la forme Ax² + Bx + C = 0');
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
			exit;
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
				writeln(' X1 = ','(', -B:0:2 ,'-i',sqrt(-delta):0:2,')','/',(2*A):0:0,' et X2 = ','(',-B:0:2,'+i',sqrt(-delta):0:2,')','/',(2*A):0:0 );
				writeln(' s = { (',-B:0:2 ,'-i',sqrt(-delta):0:2,')','/',(2*A):0:0 ,' ; ', '(',-B:0:2,'+i',sqrt(-delta):0:2,')','/',(2*A):0:0 ,' }' );
		end;

		if delta = 0 then
		Begin
			si_delta_est_0;
		end;
	 readkey
END.