Program fonction_mystere;
Uses WinCrt;
Var nombre : LongInt;
Function mystere(n : LongInt) : Integer;
var s : Integer;
Begin
		s := 0;
		while (n > 0) Do
		Begin
				s := s + n mod 10;
				n := n div 10;
		end;
		mystere := s;
end;

BEGIN

		write('Entrer un nombre : ');
		readln(nombre);

		writeln('La somme des chiffres du nombre est : ',mystere(nombre));

		READKEY
END.