Program valeur_paires;
uses WinCrt;
Var glo_M,glo_N : Integer;
Procedure paires(M, N : Integer);
Var i, retourne : Integer;
Begin
		if (M < N) Then
		Begin
				if (M mod 2 = 0) Then
				Begin
						retourne := M + 2;
						writeln('La 1er valeur paire est : ',retourne);
				end

				Else
				Begin
						retourne := M + 1;
						writeln('La 1er valeur paire est ',retourne);
				end;

				for i := (retourne + 2) to (N - 1) Do
				Begin
						writeln('La ',i - (retourne - 1) - 1,'eme valeur paire est : ',i);
						i := i + 1;
				end;
		end

		Else
			writeln('La valeur ',N,' doit etre superieur à la valeur ',M);
end;

BEGIN

		write('Entrer la valeur de M : ');
		read(glo_M);

		write('Entrer la valeur de N : ');
		read(glo_N);

		paires(glo_M, glo_N);

	ReadKey
END.