Program Recherche_dichotomique;
const max_c = 2000;
Type Etudiant = record
	 prenom : String[50];
	 nom, NCE : String[20];
	 moy : real;
end; 
	tab = array[1..max_c] of Etudiant;
var T : tab;
	taille, val : Integer;

//-------------------------------------------------------------------------//
procedure tri_selection(var T : tab; n : Integer);
var i, j, imin : Integer;
	tmp : Etudiant;
begin
	for i := n downto 1  do
	begin
		imin := 1;
		for j := 1 to i do
			if (T[imin].moy > T[j].moy) then
				imin := j;

			tmp := T[i];
			T[i] := T[imin];
			T[imin] := tmp;
	end;
end;
//-------------------------------------------------------------------------//
function dico(T : tab; val, mil, deb, fin : Integer): Boolean;
begin
	if (T[mil]=val) then
	   dico := true;

end;
//-------------------------------------------------------------------------//
function saisie_un(p : Etudiant) : Etudiant;
begin
	write('   Prenom de l''Etudiant : ');
	readln(p.prenom);

    write('   Nom de l''Etudiant : ');
    readln(p.nom);

	repeat
		write('   Identifiant de l''Etudiant : ');
    	readln(p.NCE)
    until (p.NCE >= 0);

    repeat
    	write('   Moyenne de l''Etudiant : ');
        readln(p.moy);
    until ((p.moy >= 0) and (p.moy <= 20));
    saisie_un := p;
end;
//-------------------------------------------------------------------------//
procedure saisie(var T : tab; n : Integer);
var i : Integer;
begin
	for i := 1 to n do
		T[i] := saisie_un(T[i]);
end;
//-------------------------------------------------------------------------//

Begin ///////////////////// Debut du prgramme principal /////////////////////
	repeat
		write('Entrer la taille du tableau : ');
		readln(taille);
	until ((taille > 0) and (taille <= max_c));

	saisie(T, taille);
	tri_selection(T, taille);

	writeln;
	write('Donner la valeur a recher ')


End.  ///////////////////// Fin du prgramme principal //////////////////////