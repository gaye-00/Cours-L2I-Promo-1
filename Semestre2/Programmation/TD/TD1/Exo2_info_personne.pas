Program Exo2_info_personne;
type date = record
	jour : 1..31;
	mois : 1..12;
	annee : Integer;
end;
	personne = record
		prenom : String[50];
		nom : String[20];
		date_nai : date;
end;
var P : personne;
/////////////////////////////////
BEGIN 

	write('Entrer le prenom et le nom de la personne : ');
	readln(P.prenom, P.nom);

	write('Entrer sa date de naissane (jour/mois/annee) : ');
	readln(P.date_nai.jour,P.date_nai.mois,P.date_nai.annee);

	writeln;
	writeln(P.prenom,'	',P.nom);
	writeln('Date de naissance : ',P.date_nai.jour,'/',P.date_nai.mois,'/',P.date_nai.annee);

END.