Program eleve_test;
const max_c = 1000;
type eleve = record
	nom : String[50];
	classe : String[20];
	notes : array[1..5] of real;
end;
type_tab = array[1..max_c] of eleve;
var E : type_tab; taille : Integer;
////////////////////////////////////////////
procedure saisie(var X : type_tab; n : Integer);
var i, j : Integer;
begin
	for i := 1 to n do 
	with X[i] do
	begin
		write('Entrer le prenom et le nom de l''eleve : ');
		readln(nom);

		write('Entrer sa classe : ');
		readln(classe);

		for j := 1 to 5 do
		repeat
			write(j,' : Enter sa note : ');
			readln(notes[j]);
		until (notes[j] >= 0) and (notes[j] <= 20);
	end;
end;
procedure affiche(X : type_tab ; n : Integer);
var i, j : Integer;
begin
	for i := 1 to n do
	with X[i] do
	begin
		writeln('Nom de l''eleve : ',nom);
		writeln('Sa classe : ',classe);
		write('Ces notes : ');
		for j := 1 to 5 do 
			write(' ,',notes[j]:0:2);
		writeln;
	end;
end;
////////////////////////////////////////////////
BEGIN 

	repeat
		write('Enter le nombre d''eleves : ');
		readln(taille);
	until (taille >= 0) and (taille <= 20);

	saisie(E, taille);
	affiche(E, taille);

END.