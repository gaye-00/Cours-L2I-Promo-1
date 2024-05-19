Program Recherche_dichotomique;
const max_c = 2000;
Type tab = array[1..max_c] of Integer;
var T : tab;
	taille, i, valeur : Integer;

//-------------------------------------------------------------------------//
procedure tri_selection(var T : tab; n : Integer);
var i, j, imax, tmp : Integer;
begin
	for i := n downto 1  do
	begin
		imax := 1;
		for j := 1 to i do
			if (T[imax] < T[j]) then
				imax := j;

			tmp := T[i];
			T[i] := T[imax];
			T[imax] := tmp;
	end;
end;
//-------------------------------------------------------------------------//
function dico(T : tab; val, mil, deb, fin : Integer): Boolean;
begin
	if (T[mil] = val) then
		dico := true
	else if ((val < T[mil]) and (mil <> 1)) then
		dico := dico(T, val, (deb + mil) div 2, deb, mil)
	else if ((val > T[mil]) and (mil <> fin)) then
		dico := dico(T, val, (mil + fin) div 2, mil, fin)
	else
		dico := false;
end;
//-------------------------------------------------------------------------//

Begin ///////////////////// Debut du prgramme principal /////////////////////
	repeat
		write('Entrer la taille du tableau : ');
		readln(taille);
	until ((taille > 0) and (taille <= max_c));

	writeln;
	for i := 1 to taille do
	begin
		write('Entrer la valeur T[',i,'] : ');
		readln(T[i]);
	end;
	tri_selection(T, taille);
	writeln;
	for i := 1 to taille do
		write(T[i],'  ');

	writeln;
	write('Donner la valeur a rechercer : ');
	readln(valeur);

	writeln;
	if (dico(T, valeur, (1 + taille) div 2, 1, taille)) then
		writeln(valeur,' est dans le tableau')
	else
		writeln(valeur,' n''est pas dans le tableau');

End.  ///////////////////// Fin du prgramme principal //////////////////////