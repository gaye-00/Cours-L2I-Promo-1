Program le_nb_occurrence;
const max_c = 1000;
Type type_tab = array[1..max_c] of real;
var tab : type_tab;
	i, taille, nb : Integer;
	nombre : real;
///////////////////////////////////////////////////////////////////////////
procedure tri_insertion(var X : type_tab; n : Integer);
var i, j : Integer;
	v : real;
begin
	for i := 2 to n do
	begin
		v := X[i]; j := i - 1;
		while ((j >= 1) and (X[j] > v)) do
		begin
			X[j+1] := X[j];
			j := j - 1;
		end;
		X[j+1] := v;
	end;
	writeln('Apres triage les elements sont');
	for i := 1 to n do
		write(X[i]:0:2,' ');
end;
//*******************************************************************************//
function occu_nb(T : type_tab; n : Integer; nb : real): Integer;
var i, cmp : Integer;
begin
	cmp := 0; i := 1;
	while ((i <= n) and (nb <> T[i])) do
		i := i + 1;

	while ((i <= n) and (T[i] = nb)) do
	begin
		cmp := cmp + 1;
		i := i + 1;
	end;

	occu_nb := cmp;
end;
///////////////////////////////////////////////////////////////////////////
Begin // Debut du prgramme principal
	repeat
		write('Donner la taille du tableau : ');
		readln(taille);
	until ((taille > 0) and (taille <= max_c));

	writeln;
	for i := 1 to taille do
	begin
		write('Donner la valeur tab[',i,'] : ');
		readln(tab[i]);
	end;

	writeln;
	tri_insertion(tab, taille);

	writeln; writeln;
	write('Donner la valeur du nombre a rechercher : ');
	readln(nombre);

	nb := occu_nb(tab, taille, nombre);
	writeln('le nombre de ',nombre:0:2,' est : ', nb);

End.  // Fin du prgramme principal