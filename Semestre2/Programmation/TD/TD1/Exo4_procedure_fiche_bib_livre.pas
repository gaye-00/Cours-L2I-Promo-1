Program fiche_bibliograpgique_livre;
const max_a = 10;
type date = record
	 jour : 1..31;
	 mois : 1..12;
	 annee : Integer;
end;
     fiche_bibliograpgique = record
     titre, editeur, domaine, numero_ISBN1 : String;
     auteurs : array[1..max_a] of String;
     date_paru : date;
end;
var F : fiche_bibliograpgique;
	i, nb : Integer;
///////////////////////////////////////////////////////////////////
procedure saisie_fiche(var X : fiche_bibliograpgique; n : Integer);
var i : Integer;
begin
	writeln;
	with X do
	begin
		write('Entrer le titre du livre : ');
		readln(titre);

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
end;
procedure affiche_fiche(X : fiche_bibliograpgique; n : Integer);
var i : Integer;
begin
	writeln;
	with X do
	begin
		writeln('Le livre est intitule ',titre);

		writeln('Les auteurs du livre sont : ');
		for i := 1 to nb do
			writeln(auteurs[i]);

		writeln('L''editeur du livre est : ',editeur);

		writeln('Le domaine traité dans le livre est : ',domaine);
	end;

end;
////////////////////////////////////////////////////////////////////////

BEGIN 
	repeat
		write('Entrer le nombre d''auteurs : ');
		readln(nb);
	until ((nb > 0) and (nb <= 10));

	writeln;
	saisie_fiche(F, nb);
	affiche_fiche(F, nb);

END.