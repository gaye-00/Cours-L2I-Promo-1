Program tri_rapide_test;
const max_c = 100;
Type tab = array[1..max_c] of Integer;
var T : tab; taille, i : Integer;
////////////////////////////////////////////////////////////////////////////////
function partitionner(var X : tab; imin, imax : Integer): Integer;
var i, j, v, tmp : Integer;
begin
	i := imin; j := imax - 1;
	v := X[imax];
	while (i <= j) do
	begin
		while ((i < imax) and (X[i] <= v)) do
			i := i + 1;
		while ((j >= imin) and (X[j] >= v)) do
			j  := j - 1;
		if (i < j) then
		begin
			tmp := X[i];
			X[i] := X[j];
			X[j] := tmp;
		end;
	end;
	X[imax] := X[i];
	X[i] := v;
	partitionner := i;
end;
//-----------------------------------------------------------------------------//
procedure tri_rapide(var X : tab; imin, imax : Integer);
var i : Integer;
begin
	if (imin < imax) then
	begin
		i := partitionner(X, imin, imax);
		tri_rapide(X , imin, i-1);
		tri_rapide(X , i+1, imax);
	end;
end;
//-----------------------------------------------------------------------------//
procedure quicksort(var X : tab; n : Integer);
begin
	tri_rapide(X, 1, n);
end;
////////////////////////////////////////////////////////////////////////////////
Begin
	repeat
		write('Donner la taille du tableau : ');
		readln(taille);
	until ((taille > 0) and (taille <= 100));

	writeln;
	for i := 1 to taille do
	begin
		write(i,' : Entrer l''element : ');
		readln(T[i]);
	end;

	writeln;
	writeln('Avant triage rapide les element sont ');
	for i := 1 to taille do
		write(T[i],' ');

	quicksort(T, taille);

	writeln; writeln;
	writeln('Apres triage rapide les element sont ');
	for i := 1 to taille do
		write(T[i],' ');

End.