Program suite_de_Fibonacci;
Uses WinCrt;
Var nb : Integer;
Function suite(n : Integer): Integer;
Begin
		if (n = 0) Then
			suite := 0

		Else if (n = 1) Then
			suite := 1

		Else
			suite := suite(n - 1) + suite(n - 2);
end;

BEGIN

		Repeat
				write('Entrer un nombre entier : ');
				readln(nb);
		Until (nb >= 0);

		writeln('La suite de ',nb,' est : ',suite(nb));

		readkey;
END.