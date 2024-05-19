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
		writeln('Les Rangs : ',T[i].rang);
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
	affiche(T, n);
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
procedure verifie(var T : tab ; n : Integer);
var i, j : Integer;
	ok : Boolean;
begin
	for i := 1 to n-1 do
	begin
	 	ok := false;
	 	if (T[i].moy = T[i+1].moy) then
	 	begin
	 		j := i;
	 		while ((j <= n) and (ok = false)) do
	 		begin
	 			if(T[i].nom[j] > T[i+1].nom[j]) then
	 				Echange(T[i], T[i+1])
	 			else if(T[i].nom[j] = T[i+1].nom[j]) then
	 				j := j + 1
	 			else
	 				ok := true;
	 		end;
	 	end;
	 end;
end;
//---------------------------------------------------------------------------------------------------------------//
procedure tri(var T : tab; n : Integer);
var i, j : Integer;
	tmp : Etudiant;
begin
	for i := 1 to n-1 do
		for j := i+1 to n do 
			if (T[i].moy < T[j].moy) then
			begin
				Echange(T[i], T[j]);
				//verifie(T[i],T[j]);
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

	writeln;
	writeln('Avant tri_rapide');
	affiche(T, taille);

	tri(T,taille);

	writeln;
	writeln('Apres tri_rapide');
	affiche(T, taille);

	writeln;
	writeln('Les exqos ');
	affiche_exqo(T, taille);

	writeln;
	writeln('Test verifie');
	


End.  //////////////////////////////////////// Fin du prgramme principal /////////////////////////////////////////