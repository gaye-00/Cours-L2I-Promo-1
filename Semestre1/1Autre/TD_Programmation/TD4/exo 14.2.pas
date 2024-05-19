Program puissance;
Uses WinCrt;
Var nombre, total : real; puis : Integer;
Function puiss(x : real; n : Integer) : real;
var i : Integer;
		nb_fois : real;
Begin
		nb_fois := 1;
		if (n > 0) Then
				for i := 1 to n Do
					nb_fois := nb_fois * x

		Else
		nb_fois := x;
		for i := (n -1) to -1 Do
				nb_fois := nb_fois / x;

				puiss := nb_fois;
end;
BEGIN

		write('Entrer un nombre : ');
		read(nombre);

		write('Enter la puissance du nombre : ');
		read(puis);

		total := puiss(nombre, puis);

		writeln(nombre:0:2,' puissance ',puis,' est : ',total:0:12);

		readkey;
END.