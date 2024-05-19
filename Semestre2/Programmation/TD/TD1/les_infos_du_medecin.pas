Program les_infos_du_medecin;
type fiche = record
	nom : String[30];
	numero : Integer;
	tel : String[15];
	sexe : (Homme, Femme);
end;
var P : fiche;
///////////////////////////////////////////
procedure saisie(var X: fiche);
begin
	write('Entrer le nom du parient : ');
	readln(X.nom);

	write('Entrer son numero : ');
	readln(X.numero);

	write('Enter son numero de telephone : ');
	readln(X.tel);

	write('Enter son sexe(Homme/Femme) : ');
	readln(X.sexe);
end;
procedure affiche(X: fiche);
begin
	with X do 
	begin
		writeln;
		writeln('Nom du patient : ',nom);
		writeln('Son numero : ',numero);
		writeln('TEL : ',tel);
		writeln('Son sexe : ',sexe);
	end;
end;
///////////////////////////////////////////
BEGIN 

	saisie(P);
	affiche(P);

END.	