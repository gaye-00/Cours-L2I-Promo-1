program nb_voyelle;
Type ensemble = Char;
var voyelle : set of ensemble;
	chaine : String;
	i, nb : Integer;
Begin
	voyelle := ['y','a','o','u','i','e','Y','A','O','U','I','E'];

	write('Entrer un chaine de caractere : ');
	readln(chaine);

	nb := 0;
	for i := 1 to length(chaine) do
		if (chaine[i] in voyelle) then
			nb := nb + 1;

	writeln('Le nombre de voyelle dans la chaine est ',nb);
End.