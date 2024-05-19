Program puissance_nombres;
uses wincrt;
Var nombre, result : real; puis : Integer;
Function puissance(nombref : real; puisf : Integer) : real;
Var return : real; i : Integer;
Begin
		i := 0; return := 1;

		if puisf > 0 Then
		Begin
			for i := 1 to puisf Do
				return := return * nombref;
		end

			Else
			
			Begin
					for i := puisf to -1 Do
						return := return / nombref;
			end;

		puissance := return;
end;

BEGIN

		write('Entrer le nombre : ');
		read(nombre);

		write('Entrer la puissance du nombre : ');
		read(puis);
		writeln;

		result := puissance(nombre, puis);
		write('La valeur du nombre ',nombre:0:2,' de puissance ',puis,' est : ',result:0:4);

	readkey
END.