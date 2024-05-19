Program procedure_autonome;
uses wincrt;
Var n, x : LongInt;

Procedure factorielle(nf : integer; Var f : LongInt);
Var i : Integer;
Begin
		f := 1;
		for i := 2 to nf Do
			f := f * i;
end;

BEGIN

		write('Entrer un nombre : ');
		read(n);

    x := 1;
		factorielle(n , x);
		write(n,'! = ', x);

   Readkey;
END.