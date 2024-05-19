Program exo_11;
uses wincrt;
Var mot : String;
		nombre, j, i : Integer;

//le nombre de mots pas le nombe de caracteres
//le nombre de caracteres imprimable 'espace' ne fait pas partir
//le nombre de caracteres 'non imprimable espace' c'est pas espace
BEGIN

		write('Entrer un text : ');
		readln(mot);

		nombre := Length(mot);
		writeln;

		j := 0;
		for i := 1 to nombre Do
		Begin
				if mot[i] = ' ' Then
				 j := j + 1;
		end;
		writeln('Le nombre de mots dans le texte est : ',nombre - j);


	 Readkey;
END.