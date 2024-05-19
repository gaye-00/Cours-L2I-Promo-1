Program les_fonctions;
const max_c = 1000;
Type type_tab = array[1..max_c] of real;
var T : type_tab; taille, v, i : Integer; boole : Boolean;
////////////////////////////////////////////////////////////////
function recherche(X : type_tab; n : Integer): Boolean;
var i : Integer; ok : Boolean; v : real;
begin
	writeln;
	write('Entrer un valeur a rechercher dans le tableau : ');
	readln(v);

	ok := false; i := 1;
	while ((ok = false) and (i <= n)) do
	begin
		if (X[i] = v) then
			ok := true
		else
			i := i + 1;
	end;
	recherche := ok;
end;
function occurrence(X : type_tab; n : Integer): Integer;
var i, cp : Integer; v : real;
begin
	writeln;
	write('Entrer un valeur pour savoir le nombre occurrence : ');
	readln(v);

	cp := 0;
	for i := 1 to n do
		if (v = X[i]) then
			cp := cp + 1;
	occurrence := cp;
end;
procedure tri(var X : type_tab; n : Integer);
var i, j, imax : Integer; tmp : real;
begin
	for i := n downto 1 do
	begin
		imax := 1;
		for j := 1 to i do
			if (X[j] > X[imax]) then
				imax := j;
		tmp := X[i];
		X[i] := X[imax];
		X[imax] := tmp;
	end;
end;
function occurrence_tri(X : type_tab; n : Integer): Integer;
var i, cp, j : Integer; v : real; ok : Boolean;
begin
	writeln;
	write('Entrer un valeur a rechercher dans T tri : ');
	readln(v);

	tri(X, n);
	ok := true; i := 1; cp := 0;
	while ((ok) and (i <= n)) do 
	begin
		if (v = X[i]) then
		begin
			cp := cp + 1;
			j := i + 1;

			while (v = X[j]) do
			begin
				cp := cp + 1;
				j := j + 1;
			end;
			ok := false;
		end

		else
			i := i + 1;
	end;
	occurrence_tri := cp;
end;
////////////////////////////////////////////////////////////////
Begin 
	repeat
		write('Entrer la taille du tableau : ');
		readln(taille);
	until ((taille > 0) and (taille < max_c));

	writeln;
	for i := 1 to taille do
	begin
		write('Entrer T[',i,'] : ');
		readln(T[i]);
	end;

	boole := recherche(T, taille);
	if (boole = true) then
		writeln('La valeur est dans le tableau ')
		
	else
		writeln('La valeur ne se trouve pas dans le tableau');

	v := occurrence(T, taille);
	writeln('Le nombre d''occurrence dans le tableau est : ',v);

	v := occurrence_tri(T, taille);
	writeln('Le nombre d''occurrence dans tableau trie est : ',v);
End.