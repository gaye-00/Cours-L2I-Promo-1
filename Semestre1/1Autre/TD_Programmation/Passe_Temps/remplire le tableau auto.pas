Program grande_tableau;
uses WinCrt;
Const max_l = 2000; max_c = 2000;
Type Matrice = array[1..max_l,1..max_c] of LongInt;
Var Mat : Matrice;
		i, j : Integer;
		nombre : LongInt;

BEGIN

		nombre := 1;
		for i := 1 to max_l Do
			for j := 1 to max_c Do
			Begin
					Mat[i,j] := nombre;
					writeln(Mat[i,j]);
					nombre := nombre + 1;
			end;

END.
