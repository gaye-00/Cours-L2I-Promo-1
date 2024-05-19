program les_diffents_tris;
const max_c = 1000;
type tab=array[1..max_c] of Integer;
var A : tab; i, taille, choix : Integer;

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
procedure tri_insertion(var T : tab; n : Integer);
var i, j, v : Integer;
begin
	for i := 2 to n do
	begin
	 	v := T[i];
	 	j := i  - 1;
	 	while ((j >= 1) and (v < T[j])) do 
	 	begin
	 		T[j + 1] := T[j];
	 		j := j - 1;
	 	end;
	 	T[j + 1] := v;
	end; 
end;
//-------------------------------------------------------------------------//
procedure tri_bulle(var T : tab; n : Integer);
var i, j, tmp : Integer;
begin
	for i := 1 to (n - 1) do
		for j := (i + 1) to n do
			if (T[i] > T[j]) then
			begin
				tmp := T[i];
				T[i] := T[j];
				T[j] := tmp;
			end;
end;
//-------------------------------------------------------------------------//

Begin,

	repeat
		write('Entrer la taille du tableau : ');
		readln(taille);
	until ((taille > 0) and (taille <= 1000));

	writeln;
	for i := 1 to taille do
	begin
		write('Entrer la valeur T[',i,'] : ');
		readln(A[i]);
	end;

	writeln;
	writeln('Les diffentes types de tris');
	writeln('  - 1 : Tri par selection');
	writeln('  - 2 : Tri par insertion');
	writeln('  - 3 : Tri par bulle');

	writeln;
	repeat
		write('Entrer ton choix : ');
		readln(choix);
	until ((choix = 1) or (choix = 2) or (choix = 3));

	case choix of
		1 : tri_selection(A, taille);
		2 : tri_insertion(A, taille);
		3 : tri_bulle(A, taille);
	end;

	writeln; writeln('Apres triage');
	for i := 1 to taille do
		write(A[i],' ');

End.