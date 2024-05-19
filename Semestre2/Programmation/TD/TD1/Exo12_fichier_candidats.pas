program fichier_candidats;
type candidat = record
	 id : Integer;
	 prenom : String[30];
	 nom : String[15];
	 sexe : (Homme, Femme);
	 note : real;
	end;
fichier = file of candidat;
ens = Char;
var Fc : fichier;
	choix : Integer;
	//ens_choix : set of ens;

 //-------------------------------------------------------------------------//
 procedure creation_ficier(var F : fichier);
 begin
 	assign(F, 'candidats.dat');
 	rewrite(F);
 	close(F);
 end;
 //-------------------------------------------------------------------------//
 //procedure controle_id(args);
 procedure saisie_un(var p : candidat);
begin
    with p do
    begin
        repeat
            write('   Identifiant du candidat : ');
            readln(id)
        until (id >= 0);

        write('   Prenom du candidat : ');
        readln(prenom);

        write('   Nom du candidat : ');
        readln(nom);

        write('   Sexe du candidat : ');
        readln(sexe);

        repeat
            write('   Note du candidat : ');
            readln(note);
        until ((note >= 0) and (note <= 20));
    end;
end;
//-------------------------------------------------------------------------//
 procedure saisie(var F : fichier);
 var p : candidat;
 	 nombre, i : Integer;
 begin
 	creation_ficier(F);
 	repeat
 		write('Donner le nombre de candidats : ');
 		read(nombre);
 	until (nombre > 0);
 	writeln;

 	assign(F, 'candidats.dat');
 	reset(F);
 		for i := 1 to nombre do
        begin
            writeln;
            saisie_un(p);
 			write(F, p);
        end;
 	close(F);
 end;
 //-------------------------------------------------------------------------//
 procedure affiche(var F : fichier);
 var p : candidat;
 	 i : Integer;
 begin
 	assign(F, 'candidats.dat');
 	reset(F);
 		writeln(' Liste des candidats inscrits a la formation : ');
 		i := 0;
 		while (not eof(F)) do
 		begin
 			with p do
 			begin
 				read(F, p);
 				writeln('   ',i,' - ',i+1,' ',Prenom,' ',nom,' ',sexe,' ',note:0:2);
 				i := i + 1;
 			end;
 		end;
 	close(F);
end;
//-------------------------------------------------------------------------//
procedure modifier_pos(var F : fichier);
var p : candidat;
	post, nb : Integer;
begin
    assign(F, 'candidats.dat');
    reset(F);
        nb := fileSize(F);
        //writeln(filePos(F)); la position courant dans le fichier
    close(F);
    nb := nb - 1;

 	repeat
        writeln;
 		write('Donner la position du candidat a modifier dans le fichier : ');
 		readln(post);
 	until (post >= 0) and (post <= nb);

 	reset(F);
 		seek(F, post);
        saisie_un(p);
 	    write(F, p);
    close(F);

 	writeln;
 	writeln('Affichage des candidats inscrits a la formation apres modification');
 	affiche(F);

end;
//-------------------------------------------------------------------------//
procedure modifier_id(var F : fichier);
var p : candidat;
 	 idf : Integer;
begin
 	repeat
 		write('Donner l''identifiant du candidat a modifier : ');
 		readln(idf);
 	until (idf >= 0);
//Controle id
 	assign(F, 'candidats.dat');
 	reset(F);
 		seek(F, idf); // Pense que ce n'est pas bon
        saisie_un(p);
	    write(F, p);
 	close(F);

	writeln;
 	writeln('Affichage des candidats inscrits a la formation apres modification');
 	affiche(F);
end;
//-------------------------------------------------------------------------//
 procedure ajout_fin(var F : fichier);
 var p : candidat;
 begin
 	assign(F, 'candidats.dat');
 	reset(F);
 			while (not eof(F)) do
 				read(F, p);

 			writeln('Ajout d''un nouveau candidat a la fin du fichier');
            saisie_un(p);
 		write(F, p);
 	close(F);

    writeln;
 	writeln('Affichage des candidats inscrits a la formation apres un Ajout a la fin');
	affiche(F);
 end;
 //-------------------------------------------------------------------------//
 procedure supprimer_pos(var F : fichier);
 var liste : array[0..1000] of candidat;
     p : candidat;
     i, N, indice : Integer;
begin
    i := -1;
    assign(F, 'candidats.dat');
    reset(F);
        while (not eof(F)) do
        begin
            i := i + 1;
            read(F, p);
            liste[i] := p;
        end;
    close(F);
    N := i;

    repeat
        writeln;
        write('Donner la position du candidat a supprimer dans le fichier : ');
        read(indice);
    until ((indice >= 0) and (indice <= N));

    for i := indice to N-1 do
        liste[i] := liste[i+1];

    N := N - 1;
    rewrite(F);
        for i := 0 to N do 
            write(F, liste[i]);
    close(F);

    writeln;
    writeln('Affichage des candidats inscrits dans la formation apres suppression');
    affiche(F);

end;
//-------------------------------------------------------------------------//
procedure insertion_pos(var F : fichier);
var liste : array[0..1000] of candidat;
    p: candidat;
    pos, i, N : Integer;
begin
    i := -1;
    assign(F, 'candidats.dat');
    reset(F);
        while (not eof(F)) do
        begin
            i := i + 1;
            read(F, p);
            liste[i] := p;
         end;
    close(F);

    N := i;
    writeln;
    repeat
        write('Donner la position du candidat a insere dans le fichier : ');
        read(pos);
    until ((pos >= 0) and (pos <= N));

    saisie_un(p);

        for i := N downto pos do
            liste[i+1] := liste[i];
        liste[pos] := p;

    rewrite(F);
        for i := 0 to N+1 do 
            write(F, liste[i]);
    close(F);

    writeln;
    writeln('Affichage des candidats apres Insertion');
    affiche(F);
end;
 //-------------------------------------------------------------------------//

 Begin // Debut du programme principale

 	writeln('   1- Creation de fichier et saisie des candidats');
 	writeln('   2- Affichage des candidats inscrits a la formation');
 	writeln('   3- Modification d''un candidat via sa position dans le fichier');
 	writeln('   4- Modification d''un candidat via son identifiant');
 	writeln('   5- Ajout d''un nouveau candidat a la fin du fichier');
 	writeln('   6- Suppression d''un candidat par sa position');
 	writeln('   7- Insertion d''un candidat dans une position du fichier');
 	writeln('   0- Pour quitter le programme');
 	writeln;

 	//ens_choix := ['0'..'7'];
 	repeat

 			write('Entrer votre choix : ');
 			readln(choix);
        
 		writeln;
 		case choix of
 			1 : saisie(Fc);
 			2 : affiche(Fc);
 			3 : modifier_pos(Fc);
 			4 : modifier_id(Fc);
 			5 : ajout_fin(Fc);
            6 : supprimer_pos(Fc);
            7 : insertion_pos(Fc);
 		end;
 		writeln;
 	until (choix = 0);

 End. // Fin du programme principale