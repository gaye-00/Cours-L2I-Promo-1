Program fiche_bibliograpgique_livre;
type date = record
	 jour : 1..31;
	 mois : 1..12;
	 annee : Integer;
end;
     fiche_bibliograpgique = record
     titre, editeur, domaine, numero_ISBN1 : String;
     auteurs : array[1..10] of String;
     date_paru : date;
end;
var F : fiche_bibliograpgique;
	i, nb : Integer;

BEGIN 

	with F do
	begin
		write('Entrer le titre du livre : ');
		readln(titre);

		repeat
			write('Entrer le nombre d''auteurs : ');
			readln(nb);
		until (nb > 0) and (nb <= 10);

		for i := 1 to nb do
		begin
			write('Entrer l''auteur numero[',nb,'] : ');
			readln(auteurs[i]);
		end;

		write('Entre son editeur : ');
		readln(editeur);

		write('Entrer le domaine traite dans le livre : ');
		readln(domaine);

		write('Entre sa date de parution (jour/mois/annee) : ');
		readln(date_paru.jour, date_paru.mois, date_paru.annee);

		write('Entre son numero_ISBN1 : ');
		readln(numero_ISBN1);
	end;

	with F do
	begin
		writeln('Livre intitule ',titre);

		writeln('Les auteurs');
		for i := 1 to nb do
			writeln(auteurs[i]);

		writeln('editeur : ',editeur);

		writeln('Le domaine traité est : ',domaine);
	end;


END.