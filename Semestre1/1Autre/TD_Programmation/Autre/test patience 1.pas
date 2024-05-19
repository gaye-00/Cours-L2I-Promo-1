program test_patience_1;
uses wincrt;
Var
		sexe : char;
		age : Integer;

Begin

	write('Entrer le sexe de la personne (F ou H) : ');
	readln(sexe);

	while ((sexe <> 'F') and (sexe <> 'H')) Do
	Begin
			writeln;
			writeln('Le sexe de la personne entrer est non valide : ');
			writeln('Entrer encore le sexe svp (F ou H) : ');
			readln(sexe);
	end;

  writeln;
	write('Entrer l''âge de la personne : ');
	read(age);

	while (age <= 0) Do
	Begin
			writeln;
			writeln('L''âge de la personne entrrer est non valide');
			write('Entrer encore l''âge de la personne svp : ');
			read(age);
	end;

	if (sexe = 'F') and ((age >= 18) and (age <= 35)) Then
		writeln('Cette femme est imposable')
			
		else if (sexe = 'F') and ((age < 18) or (age > 35)) Then
	  	writeln('Cette femme est non imposable')

			Else if (sexe = 'H') and (age >= 20)Then
				writeln('Cet homme est imposable')
			
	 		 Else if (sexe = 'H') and (age < 20)Then
	   		 writeln('Cet homme est non imposable');


END.