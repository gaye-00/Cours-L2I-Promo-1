Program les_nombres_complexes;
Uses WinCrt;
const max = 2000;
Type  	complexe = record
	preelle : real;
	pimagenaire : real;
    end;
tab_com = array[1..max] of complexe;
var A : tab_com;
    taille, somme1 : Integer;
procedure remplissage(var X : tab_com; n : Integer);
var i : Integer;
begin
	for i := 1 to n do
	begin
        write('Enter la partie reelle ',i,' : ');
        readln(X[i].preelle);

        write('Entrer la partier imaginaire de ',i,' : ');
        readln(X[i].pimagenaire);
	end;
end;
procedure affiche_un(X : complexe);
begin
	if (X.pimagenaire > 0) then
		writeln(X.preelle:0:2,' + ',X.pimagenaire:0:2,'i')

	else
		writeln(X.preelle:0:2,' ',X.pimagenaire:0:2,'i');
end;
procedure affiche_des(X : tab_com; n : Integer);
var i : Integer;
begin
	for i := 1 to n do
		affiche_un(X[i]);
end;
function somme(X : tab_com; n : Integer): complexe;
var i : Integer; somme_un : complexe;
begin
	somme_un.preelle := 0; somme_un.pimagenaire := 0;
	for i := 1 to n do
	begin
		somme_un.preelle := somme_un.preelle + X[i].preelle;
		somme_un.pimagenaire := somme_un.pimagenaire + X[i].pimagenaire;
	end;

	somme := somme_un;
end;

BEGIN
	repeat
		write('Entrer la taille du tableau : ');
		readln(taille);
	until (taille > 0) and (taille <= 2000);

	remplissage(A, taille);
	writeln('Affichage d''un element');
	affiche_un(A[1]);

	writeln('Affichage des elements');
	affiche_des(A, taille);

	somme(A, taille);
	somme1 := somme.preelle + somme.pimaginaire;
	writeln('La somme des nombres complexes sont : ',somme1 );

END.