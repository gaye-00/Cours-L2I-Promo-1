Program nb_chiffres;
Uses WinCrt;
Var n : LongInt;
	  nb : Integer;
Function nbchiffres(n1 : LongInt) : Integer;
Var compteur : Integer;
Begin
		compteur := 0;
		Repeat
				 n1 := n1 div 10;
				 compteur := compteur + 1;
		until (n1 < 1);

		nbchiffres := compteur;
end;

BEGIN

		write('Entrer un entier : ');
		read(n);

		nb := nbchiffres(n);
		writeln('Le nombre de chiffres de l''entier est : ',nb);

		ReadKey
END.