Program palindrome;
Uses WinCrt;
var S : String;
		xi, xf : Char;
		compteur, long, i,fixe : Integer;

BEGIN

		write('Entrer un mot : ');
		readln(S);

		long := Length(S); compteur := 0;
		fixe := long div 2;
		for i := 1 to fixe Do
		Begin
				xi := S[i]; xf := S[long];
				if (xi = xf) Then
					compteur := compteur + 1;

					long := long - 1;
		end;

		writeln;
		if (compteur =  fixe) Then
			writeln(S,' est un palindrome')

			Else
				writeln(S,' n''est pas un palindrome');

		readkey;
END.