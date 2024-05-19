Program plus_simple_convertion_de_base_2_en_10;
Uses WinCrt;
Var nombre, som, last, i : Integer;
Function puissance_2(nombre : Integer) : Integer;
Var i, puis : Integer;
Begin
		puis := 1;
		for i := 1 to nombre Do
			puis := puis * 2;

		puissance_2 := puis;
end;

BEGIN

		write('Entrer un nombre en binaire dont le 1er chiffre est 1 : ');
		read(nombre);

		som := 0;
		for i := 0 to 3 Do
		Begin
				last := nombre mod 10;
				som := som + last * puissance_2(i);
				nombre := nombre div 10;
				//writeln(puissance_2(i));
		end;

		writeln;
		writeln('Le nombre ',nombre,' en base 10 est : ',som);

		readkey;
END.