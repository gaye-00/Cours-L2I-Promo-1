program boulagerie;
uses wincrt;
//Type jour_t = (0..6);
     //heure_t = (0..23);
Var
   jour : 0..6;
	 heure : 0..23;

Begin

		write('Entrer le jour de la semaine : ');
		read(jour);

		write('Entrer l''heure de la semaine : ');
		read(heure);

		if ((heure < 7) and (heure < 13)) or ((heure < 16) and (heure > 20)) Then
		 writeln('La boulagerie est non ouvert');

			if (jour = 1) Then
			 writeln('La boulagerie est non ouvert');

			 	if (jour = 0) and ((heure >= 16) and (heure <= 20)) Then
				 writeln('La boulagerie non  ouverte');

				 	if ((jour = 2) or (jour = 3) or (jour = 4) or (jour = 5) or (jour = 6)) and (((heure >= 7) and (heure <= 13)) or ((heure >= 16) and (heure <= 20))) Then
					 writeln('La boulagerie est ouvert');

end.