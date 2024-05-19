Program verifiaction_triage;
const max_c = 2000;
Type type_tab = array[1..max_c] of real;
var T : type_tab; ok : Boolean;
	taille, i : Integer;

//----------------------------------------------------------------------//
function verie_croissanre(X : type_tab; n : Integer): Boolean;
var i : Integer; ok : Boolean;
begin
	ok := true; i := 1;
	while ((i <= n-1) and (ok)) do
	begin
		if (X[i] > X[i+1]) then
			ok := false
		else
			i := i + 1;
	end;
	verie_croissanre := ok;
end;
//----------------------------------------------------------------------//
function verie_decroissanre(X : type_tab; n : Integer): Boolean;
var i : Integer; ok : Boolean;
begin
	ok := true; i := 1;
	while ((i <= n-1) and (ok)) do
	begin
		if (X[i] < X[i+1]) then
			ok := false
		else
			i := i + 1;
	end;
	verie_decroissanre := ok;
end;
//----------------------------------------------------------------------//
function verie_tri(X : type_tab; n : Integer): Boolean;
var i : Integer;
begin
	i := 1;
	while ((i <= n-1) and (X[1] = X[i+1])) do
		i := i + 1;

	if (i <> n) then
	begin
		if (X[1] < X[i+1]) then //fonction croissante
			verie_tri := verie_croissanre(X, n)

		else //fonction decroissante
			verie_tri := verie_decroissanre(X, n);
	end

	else
		verie_tri := true;
end;
//----------------------------------------------------------------------//

Begin 

	repeat
		write('Donner la taille du tableau : ');
		readln(taille);
	until ((taille > 0) and (taille <= max_c)); 

	for i := 1 to taille do
	begin
		write(i,' : Donner l''element : ');
		readln(T[i]);
	end;

	writeln;
	ok := verie_tri(T, taille);
	if (ok) then
		writeln('Le tableau est trie')

	else
		writeln('Le tableau est non trie');


End.