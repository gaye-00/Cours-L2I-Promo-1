Program Test_devoir;
Type Etudiant = record
		id : Integer;
		note : real;
		nom : String[30];
     end;
Fichier = file of Etudiant;
var Fc : Fichier;
	choix : Integer;
//----------------------------------------------------------------------------------------//
procedure creation_ficier(var F : fichier);
begin
 	assign(F, 'etude.dat');
 	rewrite(F);
 	close(F);
end;
//----------------------------------------------------------------------------------------//
procedure affiche(var F : fichier);
var p : Etudiant;
    i : Integer;
begin
 	assign(F, 'etude.dat');
 	reset(F);
 		writeln(' Liste des etudiants inscrits a la formation : ');
 		i := 0;
 		while (not eof(F)) do
 		begin
 			with p do
 			begin
 				read(F, p);
 				writeln('   ',i,' - ',i+1,' ',nom,' ',note:0:2,' Identifiant :',id);
 				i := i + 1;
 			end;
 		end;
 	close(F);
end;
//----------------------------------------------------------------------------------------//
procedure saisie_un(var p : Etudiant);
begin
    with p do
    begin
        repeat
            write('   Identifiant du candidat : ');
            readln(id)
        until (id >= 0);

        write('   Prenom et nom du candidat : ');
        readln(nom);

        repeat
            write('   Note du candidat : ');
            readln(note);
        until ((note >= 0) and (note <= 20));
    end;
end;
//----------------------------------------------------------------------------------------//
procedure saisie(var F : fichier);
var p : Etudiant;
    nombre, i : Integer;
begin
 	creation_ficier(F);
 	repeat
 		write('Donner le nombre d''etudiant : ');
 		read(nombre);
 	until (nombre > 0);
 	writeln;

 	assign(F, 'etude.dat');
 	reset(F);
 		for i := 1 to nombre do
        begin
            writeln;
            saisie_un(p);
 			write(F, p);
        end;
 	close(F);

 	writeln;
 	writeln('Liste des etudiants apres la saisie');
 	affiche(F);
end;
//----------------------------------------------------------------------------------------//
procedure recherche_id(var F : Fichier);
var p : Etudiant;
	idt : Integer;
	ok : Boolean;
begin
	ok := false;
	write('Donner l''Identifiant a rechercer : ');
	readln(idt);

	assign(F, 'etude.dat');
	reset(F);
		while ((not eof(f)) and (ok = false)) do
		begin
			read(F, p);
			if (p.id = idt) then
				ok := true;
		end;
	close(F);

	if (ok) then
		writeln(p.nom,' ',p.note:0:2,' Identifiant :',p.id)
	else
		writeln('L''etudiant n''est pas trouver');
end;
//----------------------------------------------------------------------------------------//

Begin ////////////////////////////// Debut du prgramme principal ////////////////////////////

	writeln('   1- Creation de fichier et saisie des candidats');
 	writeln('   2- Affichage des candidats inscrits a la formation');
 	writeln('   3- Rechercer un etudiant via son id');
	writeln('   0- Pour quitter le programme');
	writeln;

	repeat
		repeat
 			write('Entrer votre choix : ');
 			readln(choix);
 		until ((choix >= 0) and (choix <= 3));
        
 		writeln;
 		case choix of
 			1 : saisie(Fc);
 			2 : affiche(Fc);
 			3 : recherche_id(Fc);
 		end;
 		writeln;
 	until (choix = 0);

End.  //////////////////////////// Fin du prgramme principal ////////////////////////////////