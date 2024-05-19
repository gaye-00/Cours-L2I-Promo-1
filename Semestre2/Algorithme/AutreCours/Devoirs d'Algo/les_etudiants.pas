Program les_etudiants;
const max_c = 2001;
Type Etudiant = record
	prenom : String[50];
	nom : String[30];
	NCE : String[20];
	rang : Integer;
	moy : real;
  end;
tab = array[1..max_c] of Etudiant;
var T : tab;
	taille : Integer;

//---------------------------------------------------------------------------------------------------------------//
procedure affiche(T : tab; n : Integer);
var i : Integer;
begin
	writeln;
	for i := 1 to n do
		writeln('NCE : ',T[i].NCE,' ',T[i].prenom,' ',T[i].nom,' Moy : ',T[i].moy:0:2,'  Rang : ',T[i].rang);
	writeln;
end;
//---------------------------------------------------------------------------------------------------------------//
procedure affiche_exqo(T : tab ; n : Integer);
var i : Integer;
begin

	for i := 1 to n do
		writeln(T[i].prenom,' ',T[i].nom,' ',T[i].rang,'eme');
end;
//---------------------------------------------------------------------------------------------------------------//
procedure saisie_un(var p : Etudiant);
begin
	writeln;
	write('Donner le prenom de l''Etudiant : ');
	readln(p.prenom);
	write('Donner le nom de l''Etudiant : ');
	readln(p.nom);
	write('Donner le numero de la carte de l''Etudiant : ');
	readln(p.NCE);
	write('Donner la moyenne de l''Etudiant : ');
	readln(p.moy);
end;
//---------------------------------------------------------------------------------------------------------------//
procedure saisie(var T : tab; n : Integer);
var i : Integer;
begin
	for i := 1 to n do
		T[i].moy := 0;

	for i := 1 to n do
		saisie_un(T[i]);
end;
//---------------------------------------------------------------------------------------------------------------//
procedure Rang(var T : tab; n : Integer);
var i , cmp: Integer;
begin
	cmp := 1;
	T[1].rang := cmp;
	for i := 2 to n do
	begin
		if (T[i-1].moy = T[i].moy) then
			T[i].rang := cmp
		else
		begin
			cmp := cmp + 1;
			T[i].rang := cmp;
		end;
	end;
end;
//---------------------------------------------------------------------------------------------------------------//
procedure Echange(var p1, p2 : Etudiant);
var tmp : Etudiant;
begin
	tmp := p1; p1 := p2; p2 := tmp;
end;
//---------------------------------------------------------------------------------------------------------------//
procedure verifie(var T1, T2 : Etudiant);
var i: Integer;
	ok : Boolean;
begin
	i := 1;
	ok := true;
	while (ok) do
	begin
	 	if (T1.nom[i] > T2.nom[i]) then
	 	begin
	 		Echange(T1, T2);
	 		ok := false;
	 	end
	 	else if (T1.nom[i] < T2.nom[i]) then
	 		ok := false
	 	else
	 		i := i + 1;
	end;
end;
//---------------------------------------------------------------------------------------------------------------//
procedure tri(var T : tab; n : Integer);
var i, j : Integer;
begin
	for i := 1 to n-1 do
		for j := i+1 to n do
		begin
			if (T[i].moy < T[j].moy) then
				Echange(T[i], T[j])
			else if (T[i].moy = T[j].moy) then
				verifie(T[i], T[j]);
		end;

	Rang(T, n);
end;
//---------------------------------------------------------------------------------------------------------------//

Begin //////////////////////////////////////// Debut du prgramme principal ////////////////////////////////////////

	repeat
		write('Donner le nombre d''Etudiant : ');
		readln(taille);
	until ((taille > 0) and (taille <= max_c-1));
	writeln;

	saisie(T, taille);

	tri(T,taille);

	writeln;
	writeln('Apres Triage');
	affiche(T, taille);

	writeln;
	writeln('Les rangs des Etudiants ');
	affiche_exqo(T, taille);

End.  //////////////////////////////////////// Fin du prgramme principal /////////////////////////////////////////