Program exo_9;
uses wincrt;
Var mot, mot_4 : string;
		nombre : Integer;

BEGIN

		write('Entrer la chaine de caractere : ');
		readln(mot);

		nombre := length(mot);
		mot_4 := copy(mot, (nombre - 3), 4);
		if ((mot[1] = 'M') or (mot[1] = 'm')) Then    //and (mot_4 = 'tion')
		Begin
			if (mot_4 = 'tion') Then
				writeln('La chaine de caractere commence par "M" et se termine par "tion"')

					else if (mot_4 <> 'tion') Then
						writeln('La chaine comment par "M" mais ne se termine pas par "tion"');
		end

				Else if (mot_4 = 'tion') Then
					writeln('La chaine de caractere ne commence pas "M" mais se termine "tion"')

					Else
					writeln('La chaine de caractere ne comment pas par "M" et ne se termine pas par "tion"');


	 Readkey;
END.