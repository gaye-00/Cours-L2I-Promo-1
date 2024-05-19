Program modele;
const max_c = 2000;
Type type_tab = array[1..max_c] of Integer;
var Tab : type_tab;
	taille, i : Integer;

//----------------------------------------------------------------------//
function partitionner(var T1 : type_tab; imin, imax : Integer): Integer;
var i, j, tmp : Integer;
begin
	j := imin;
	for i := imin to imax-1 do
		if (T1[i] < T1[imax]) then
		begin
			tmp := T1[i];
			T1[i] := T1[j];
			T1[j] := tmp;
			j := j + 1;
		end;
	tmp := T1[j];
	T1[j] := T1[imax];
	T1[imax] := tmp;

	partitionner := j;
end;
//----------------------------------------------------------------------//
procedure tri_rapide(var T : type_tab; imin, imax : Integer);
var i : Integer;
begin
	if (imin < imax) then
	begin
		i := partitionner(T, imin, imax);
		tri_rapide(T, imin, i-1);
		tri_rapide(T, i+1, imax);
	end;
end;
//----------------------------------------------------------------------//

Begin //////////////////// Debut du prgramme principal ////////////////////

	repeat
		write('Donner la taille du tableau : ');
		readln(taille);
	until ((taille > 0) and (taille <= max_c));

	writeln;
	for i := 1 to taille do
	begin
		write('Donner T[',i,'] : ');
		readln(Tab[i]);
	end;

	tri_rapide(Tab, 1, taille);
	writeln;
	writeln('Apres triage les elements dans le tableau sont');
	for i := 1 to taille do
	write(Tab[i],' ');

End.  //////////////////// Fin du prgramme principal ////////////////////