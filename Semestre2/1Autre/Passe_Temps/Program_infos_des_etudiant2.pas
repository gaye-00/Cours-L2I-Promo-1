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
procedure saisie(var X : classe; n : Integer);
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
	begin
		writeln;
		write('Entrer le prenom et le nom de l''etudiant numero[',i,'] : ');
		readln(X[i].prenom, X[i].nom);

		repeat
			write('Entrer le sexe de l''etudiant (Homme ou Femme) : ');
			readln(X[i].sexe);
		until ((X[i].sexe = 'Homme') or (X[i].sexe = 'Femme'));

		repeat
			write('Entrer le numero de la carte de l''etudiant : ');
			readln(X[i].NCE);
		until (length(X[i].NCE) >= 8);
	end;
end;
function recherche(X : classe; n : Integer): Integer;
var i : Integer;
    num : String;
    ok : Boolean;
begin
	write('Entrer le numero de la carte de l''etudiant à rechercher : ');
	readln(num);

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
function verifier(X : classe; n : Integer) : Integer;
var i, j : Integer;
begin
	j := 0;
	if (X[i].note1 <> -20) then
	 j := j + 1;

	if (X[i].note2 <> -20) then
	 j := j + 1;

	if (X[i].note_exam <> -20) then  
	 j := j + 1;

	verifier := j;
end;
function tout(X : classe; n : Integer) : Integer;
var i, j : Integer;
begin
	j := 0;
	for i := 1 to n do
	begin
		if (X[i].note1 = -20) then
		 j := j + 1;

		if (X[i].note2 = -20) then 
		 j := j + 1;

		if (X[i].note_exam = -20) then 
		 j := j + 1;
	end;

	tout := j;
end;
procedure saisie_note(var X : classe; n : Integer);
var i : Integer;
    avis : String;
begin
	writeln;
	for i := 1 to n do
			writeln(i,' : ',X[i].prenom,' ',X[i].nom);

	repeat
		writeln;
		write('Entrer l''indice de l''etudiant dans la classe : ');
		readln(i);

		if ((i < 0) or (i > n)) then
		begin
			writeln('L''etudiant n''est pas dans la classe');

			repeat
				repeat
					write('Voulez-vous saisir encore (Oui ou Non) : ');
					read(avis);
				until ((avis = 'Oui') or (avis = 'Non'));

				if (avis = 'Oui') then
				begin
				    repeat
					     write('Entrer encore l''indice de l''etudiant : ');
					     readln(i);
					until ((i > 0) and (i <= n));
				end;
			until ((avis = 'Oui') or (avis = 'Non'));
		end;

		if (avis <> 'Non') then 
		begin
			writeln;
			writeln(X[i].prenom,'	',X[i].nom);
		end;

		if ((avis = 'Oui') or ((i > 0) and (i <= n))) then
		begin
			if (X[i].note1 = -20) then
			begin
				repeat
					write('Entrer la note du devoir numero[1] de l''etudiant : ');
					readln(X[i].note1);
				until ((X[i].note1 >= 0) and (X[i].note1 <= 20));
			end

			else
			 writeln('La note du devoir numero[1] est deja saisie');

			 if (X[i].note2 = -20) then
			 begin
			 	repeat
			 		write('Entrer la note du devoir numero[2] de l''etudiant : ');
			 		readln(X[i].note2);
			 	until ((X[i].note2 >= 0) and (X[i].note2 <= 20));
			 end

			 else
			 	writeln('La note du devoir numero[2] est deja saisie');

			 if (X[i].note_exam = -20) then
			 begin
			 	repeat
			 		write('Entrer la note de l''examen : ');
			 		readln(X[i].note_exam);
			 	until ((X[i].note_exam >= 0) and (X[i].note_exam <= 20));
			 end

			 else
			 	writeln('La note de l''examen est deja saisie');
		end;

		if (i >= n) then
			repeat
				writeln;
				write('Voulez-vous saisir encore (Oui ou Non): ');
				readln(avis);
			until ((avis = 'Oui') or (avis = 'Non'));
	until (avis = 'Non');
end;
procedure moy_tous(var X : classe; n : Integer);
var i : Integer;
begin
	for i := 1 to n do
		X[i].moy := ((X[i].note1 + X[i].note2 + 2*X[i].note_exam) / 4);
end;
procedure deliberer(var X : classe; n : Integer);
var i, j : Integer;
	tmp : etudiant;
begin
	moy_tous(X, n);
	writeln;

	if (tout (X , n) <> 0) then
	repeat
		writeln('Toutes les notes ne sont pas encore saisies');

		for i := 1 to n do
		begin 
			if (verifier(X, n) = 1) then
				writeln('Une note de ',X[i].prenom,' ',X[i].nom,' n''est pas encore saisie')

			else if (verifier(X, n) = 2) then
				writeln('Deux notes de ',X[i].prenom,' ',X[i].nom,' ne sont pas encore saisie')

			else if (verifier(X, n) = 3) then
				writeln('Trois notes de ',X[i].prenom,' ',X[i].nom,' ne sont pas encore saisie');
		end;


		writeln('Entrer les notes manquantes');
		saisie_note(X, n);
	until (tout(X, n) = 0);

	writeln('=================================');
	writeln('Deliberation par ordre de merite');
	writeln('=================================');

	writeln;
	writeln('Avant triage du tableau');
	for i := 1 to n do
		writeln(X[i].prenom,' ',X[i].nom,' ', X[i].sexe,' ',X[i].NCE,' ',X[i].moy:0:2);

	for i := 1 to (n - 1) do 
		for j := (i + 1) to n do 
			if (X[i].moy < X[j].moy) then
			begin
				tmp := X[i];
				X[i] := X[j];
				X[j] := tmp;
			end;

	writeln;
	writeln('Apres triage du tableau');
	for i := 1 to n do
		writeln(X[i].prenom,' ',X[i].nom,' ', X[i].sexe,' ',X[i].NCE,' ',X[i].moy:0:2);


	i := 1;
	writeln('	LA LISTE DES ADMIS PAR ORDE DE MERITE');
	writeln('NCE		PRENOM		NOM		MOYENNE');
	while (X[i].moy >= 10) do
	begin
		writeln(X[i].NCE,'  ',X[i].prenom,'  ',X[i].nom,'  ',X[i].moy:0:2);
		i := i + 1;
	end;
end;
procedure statistique(X : classe; n : Integer);
var i, f, h, admis_f, admis_h : Integer;
	somme : real;
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
end;

BEGIN // DEBUT DU PROGRAMME PRINCIPAL

	repeat
		write('Entrer le nombre d''etudiant dans la classe : ');
		readln(nombre);
	until ((nombre > 0) and (nombre <= 2000));

	writeln;
	writeln('Taper 1 pour saisir les etudiants de la classe');
	writeln('Taper 2 pour saisir les notes d''un etudiant');
	writeln('Taper 3 pour deliberer');
	writeln('Taper 4 pour voir les statistiques');
	writeln('Taper 5 pour arreter');

	repeat
		writeln;
		repeat
			write('Taper ton choix : ');
			readln(s);
		until ((s = 1) or (s = 2) or (s = 3) or (s = 4) or (s = 5));

		if (s = 1) then
			saisie(A, nombre);
		if (s = 2) then 
			saisie_note(A, nombre);
		if (s = 3) then 
			deliberer(A, nombre);
		if (s = 4) then 
			statistique(A, nombre);
		if (s = 5) then 
		begin
			writeln;
			write('Fin du programme MERCI!');
		end;
	until (s = 5);

END. // FIN DU PROGRAMME PRINCIPAL