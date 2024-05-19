Program factorielle;
Uses WinCrt;
Var nombre, facto : Integer;
Function factoriel(n : Integer) : Integer;
Var i, facto2 : Integer;
Begin
		facto2 := 1;
		for i := 2 to n Do
			facto2 := facto2 * i;

			factoriel := facto2;
end;
BEGIN

		Repeat
		write('Entrer un nombre : ');
		read(nombre);
		Until (nombre >= 0);

		facto := factoriel(nombre);
		writeln('La factorielle de ',nombre,'! est ',facto);

		ReadKey
END.