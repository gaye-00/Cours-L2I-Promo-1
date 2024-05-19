Program palindrome;
Uses WinCrt;
var S : string;
		som1, som2, i, long :Integer;


BEGIN

		write('Entrer un mot : ');
		readln(S);

		long := Length(S);

		som1 := 0; som2 := 0;
		for i := 1 to (long div 2) Do
			som1 := som1 + ord(S[i]);

			for i := (long div 2) + 1 to long Do
				som2 := som2 + ord(S[i]);

				writeln; 
				if (som1 = som2) Then
					writeln(S,' est un palindrome')

					Else
						writeln(S,' n''est pas un palindrome');

	 Readkey;
END.