Program convertion_en_binaire;
uses wincrt;
Var binaire, resultat : Integer;

BEGIN
		Repeat
		write('Entrer le nombre que tu veut convertir en binaire : ');
		read(binaire);
		Until binaire > 0;

		resultat := 0;
		while binaire > 0 Do
		Begin
				resultat := binaire mod 2;
				write(resultat, ' ');
				binaire := binaire div 2;
		end;

END.