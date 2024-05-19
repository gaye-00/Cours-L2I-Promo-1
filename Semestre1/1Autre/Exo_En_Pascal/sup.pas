Program sup;
Uses WinCrt;
Var entier : Integer;
		reel : Real;

BEGIN

		readln(entier);
		readln(reel);

		if (reel > entier) Then
			writeln('C''est bon')

			Else
				writeln('Erreur');

		ReadKey;
END.