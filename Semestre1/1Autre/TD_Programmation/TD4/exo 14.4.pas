Program exponentiel;
Uses WinCrt;
Var x, expo, division, puis : Real;
		i, facto : Integer;
Function puiss(x1 : real; n : Integer) : real;
var i : Integer;
		nb_fois : real;
Begin
		nb_fois := 1;
		if (n > 0) Then
				for i := 1 to n Do
					nb_fois := nb_fois * x1

		Else
		nb_fois := x1;
		for i := (n -1) to -1 Do
				nb_fois := nb_fois / x1;

				puiss := nb_fois;
end;
Function factoriel(n : Integer) : Integer;
Var i, facto2 : Integer;
Begin
		facto2 := 1;
		for i := 2 to n Do
			facto2 := facto2 * i;

			factoriel := facto2;
end;

BEGIN

		write('Entrer l''exponentiel de x : ');
		read(x);

		expo := 1;
		for i := 1 to Trunc(x) +4 Do
		Begin
				puis := puiss(x, i);
				facto := factoriel(i);
				division := puis / facto;
				expo := expo + division;
		end;

		writeln('L''exponentiel de ',x:0:2,' est : ',expo:0:3);



		ReadKey
END.