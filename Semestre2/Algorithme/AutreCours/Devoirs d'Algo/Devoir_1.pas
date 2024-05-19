Program infos_des_etudiant;
uses wincrt;
const N_max = 2000;
Type etudiant = record
	prenom : String[40];
	nom : String[20];
	sexe : String[20];
	NCE : String[30];
	note1 : real;
	note2 : real;
	note_exam : real;
	moy : real;
end;
classe = array[1..N_max] of etudiant;
var A: classe;
    nombre, s : Integer;
/////////////////////////////////////////////////////////////////////////////////////////////////
function controle_NCE(numero : String): Boolean;
var i : Integer;
	ok : Boolean;
begin
	i := 1; ok := true;
	while ((ok) and (i <= length(numero))) do
	begin
		if ((numero[i] >= '0') and (numero[i] <= '9')) then
			i := i + 1
		else
			ok := false;
	end;

	if (length(numero) <= 6) then
		ok := false;

	controle_NCE := ok;
end;
//--------------------------------------------------------------------------------------------//
procedure saisie_un(var X : etudiant);
var ok : Boolean;
begin
	writeln;
	write('Entrer le prenom et le nom de l''etudiant : ');
	readln(X.prenom, X.nom);

	repeat
		write('Entrer le sexe de l''etudiant (Homme ou Femme) : ');
		readln(X.sexe);
	until ((X.sexe = 'Homme') or (X.sexe = 'Femme'));

	repeat
		write('Entrer le numero de la carte de l''etudiant : ');
		readln(X.NCE);
		ok := controle_NCE(X.NCE);
	until (ok);
end;
//--------------------------------------------------------------------------------------------//
procedure saisie_tous(var X : classe; n : Integer);
var i : Integer;
begin
	for i := 1 to n do
	begin
		X[i].note1 := -20;
		X[i].note2 := -20;
		X[i].note_exam := -20;
		X[i].moy := -20;
	end;

	for i := 1 to n do
		saisie_un(X[i]);
end;
//--------------------------------------------------------------------------------------------//
procedure saisie_note_un(var X : etudiant);
begin
	writeln;
	writeln('         ',X.prenom,' ',X.nom);
	repeat
		write('Entrer la note du devoir numero[1] de l''etudiant : ');
		readln(X.note1);
	until ((X.note1 >= 0) and (X.note1 <= 20));

 	repeat
 		write('Entrer la note du devoir numero[2] de l''etudiant : ');
 		readln(X.note2);
	 until ((X.note2 >= 0) and (X.note2 <= 20));

	 repeat
	 	write('Entrer la note de l''examen : ');
	 	readln(X.note_exam);
	 until ((X.note_exam >= 0) and (X.note_exam <= 20));
end;
//--------------------------------------------------------------------------------------------//
procedure saisie_note(var X : classe; n : Integer);
var i : Integer;
begin
	if (X[1].sexe = 'Femme') then 
		for i := 1 to n do
			saisie_note_un(X[i])

	else if (X[1].sexe = 'Homme') then 
		for i := 1 to n do
			saisie_note_un(X[i])
	else
		writeln('Entrer les etudiants d''abord');
end;
//--------------------------------------------------------------------------------------------//
//##########################################################
function recherche(X : classe; n : Integer): Integer;
var i : Integer;
    num : String[30];
    ok : Boolean;
begin
	repeat
		write('Entrer le numero de la carte de l''etudiant à rechercher : ');
		readln(num);
		ok := controle_NCE(num);
	until (ok);

	i := 1; ok := false;
	while ((i <= n) and (ok = false)) do 
	begin
		if (num = X[i].NCE) then
         ok := true
         else
          i := i + 1;
	end;

	if (ok = true) then
	 recherche := i

	else
	 recherche := -1;
end;
//--------------------------------------------------------------------------------------------//
function verifier(X : etudiant) : Boolean;
var ok : Boolean;
begin
	if ((X.note1 <> -20) and (X.note2 <> -20) and (X.note_exam <> -20)) then
	 	ok := true
	else
		ok := false;

	verifier := ok;
end;
//--------------------------------------------------------------------------------------------//
function tout(X : classe; n : Integer) : Boolean;
var i : Integer;
	ok : Boolean;
begin
	ok := true; i := 1;
	while ((i <= n) and ok) do 
	begin
		if (X[i].note1 < 0 ) then
			ok := false
		else
			i := i + 1;
	end;
	tout := ok;
end;
//--------------------------------------------------------------------------------------------//
procedure moy_tous(var X : classe; n : Integer);
var i : Integer;
begin
	for i := 1 to n do
		X[i].moy := ((X[i].note1 + X[i].note2 + 2*X[i].note_exam) / 4);
end;
//--------------------------------------------------------------------------------------------//
procedure deliberer(var X : classe; n : Integer);
var i : Integer;
begin
	if (not tout (X , n)) then
	repeat
		writeln;
		writeln('Toutes les notes ne sont pas encore saisies');
		writeln('   -Entrer les notes manquantes d''abord');
		saisie_note(X, n);
	until (tout(X, n));

	writeln('=================================');
	writeln('Deliberation par ordre de merite');
	writeln('=================================');
	moy_tous(X, n);

	i := 1;
	writeln('	LA LISTE DES ADMIS PAR ORDE DE MERITE');
	writeln('NCE		PRENOM		NOM		MOYENNE');
	if (X[1].moy = 0) then
		writeln('            LISTE VIDE');

	while (X[i].moy >= 10) do
	begin
		writeln(X[i].NCE,'  ',X[i].prenom,'  ',X[i].nom,'  ',X[i].moy:0:2);
		i := i + 1;
	end;
end;
//--------------------------------------------------------------------------------------------//
procedure statistique(X : classe; n : Integer);
var i, f, h, admis_f, admis_h : Integer;
	somme : real;
begin
	moy_tous(X, n);
	if ((tout(X, n)) and (X[1].moy <> 0)) then
	begin
	h := 0; f := 0;
	for i := 1 to n do
	begin
		if (X[i].sexe = 'Femme') then
			f := f + 1;

		if (X[i].sexe = 'Homme') then
			h := h + 1;
	end;

	admis_f := 0;
	for i := 1 to n do
		if (((X[i].moy >= 10) and (X[i].sexe = 'Femme'))) then 
			admis_f := admis_f + 1;

	admis_h := 0;
	for i := 1 to n do
		if (((X[i].moy >= 10) and (X[i].sexe = 'Homme'))) then 
			admis_h := admis_h + 1;

	writeln;
	if (h <> 0) then 
		writeln('Le pourcentage d''homme admis est : ',((admis_h / h) * 100):0:2,'%');
	if (f <> 0) then 
		writeln('Le pourcentage de femme admis est : ',((admis_f / f) * 100):0:2,'%');

	writeln;
	if (h <> 0) then 
		writeln('Le pourcentage d''homme non admis est : ',(((h - admis_h) / h) * 100):0:2,'%');
	if (f <> 0) then 
		writeln('Le pourcentage de femme non admis est : ',(((f - admis_f) / f) * 100):0:2,'%');

	writeln;
	writeln('Le premier(e) de la classe est un(e) : ',X[1].sexe);
	writeln('Le dernier(e) de la classe est un(e) : ',X[f + h].sexe);
	writeln;
	writeln('La moyenne du premier de la classe est : ',X[1].moy:0:2);
	writeln('La moyenne du dernier de la classe est : ',X[f + h].moy:0:2);
	writeln;

	somme := 0;
	for i := 1 to n do
		if (X[i].moy <> -20) then 
			somme := somme + X[i].moy;
	somme := somme / n;
	writeln('La moyenne generale de la classe est : ',somme:0:2);
	end

	else
		writeln('Saissisai d''abord tout les notes');
end;
/////////////////////////////////////////////////////////////////////////////////////////////////
BEGIN // DEBUT DU PROGRAMME PRINCIPAL

	repeat
		write('Entrer le nombre d''etudiant dans la classe : ');
		readln(nombre);
	until ((nombre > 0) and (nombre <= 2000));

	writeln;
	writeln('  -Taper 1 pour saisir les etudiants de la classe');
	writeln('  -Taper 2 pour saisir les notes des etudiants');
	writeln('  -Taper 3 pour deliberer');
	writeln('  -Taper 4 pour voir les statistiques');
	//writeln('  -Taper 5 pour rechercher un etudiant');
	writeln('  -Taper 0 pour arreter');

	repeat
		repeat
			writeln;
			write('Taper ton choix : ');
			readln(s);
		until ((s >= 0) and (s <= 4));

		case s of
			1 : saisie_tous(A, nombre);
			2 : saisie_note(A, nombre);
			3 : deliberer(A, nombre);
			4 : statistique(A, nombre);
		end;
			
		if (s = 0) then 
		begin
			writeln;
			write('Fin du programme MERCI!');
		end;
	until (s = 0);

END. // FIN DU PROGRAMME PRINCIPAL