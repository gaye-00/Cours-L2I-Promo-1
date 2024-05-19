Program payer_impot;
Uses WinCrt;
Var age : Integer;
		sex : Char;

BEGIN

		Repeat
				 write('Entrer l''age de la personne : ');
				 readln(age);
		Until (age > 0);

		writeln;
		writeln('F = Femme et H = Homme');
		Repeat
				 write('Enter le sex de la personne : ');
				 readln(sex);
		Until (sex = 'H') or (sex = 'F');

		if (sex = 'H') and (age > 20) Then
			writeln('Cet homme paye l''impôt')

			Else if (sex = 'F') and ((age >= 18) and (age <= 35)) Then
				writeln('Cette femmme paye l''impôt')

				Else
					writeln('Cette personne ne paye pas l''impôt');


		READKEY
END.