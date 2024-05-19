Program nombre_etudiant;
uses wincrt;
Type etudiant = record
     prenom : String[50];
		 nom : String[20];
		 classe : String[100];
		 note1, note2, note3 : real;
		 end;
Var p : etudiant;
    F : file of etudiant;
		i : Integer;
		ajoue : Integer;

BEGIN  // Begin principal


		 Assign(F, 'fichier1_integrale.dat');
		 Reset(F);
		 i := 1;

while not Eof(F) Do
Begin
		read(F, p);

		writeln('===================================');
		writeln('Numero ',i, ' : ',p.prenom ,' ', p.nom);
		writeln('===================================');

		writeln('Prenom : ', p.prenom);
		writeln('Nom : ', p.nom);
		writeln('Classe : ', p.classe);
		writeln('Les notes de ',p.prenom,' ',p.nom,' sont : ',p.note1:0:0,'; ',p.note2:0:0,' et ',p.note3:0:0 );
		writeln('La moyenne des notes est : ',(p.note1 + p.note2 + p.note3)/3:0:2);
		writeln;
		i := i + 1;
end;

		close(F);
		writeln;writeln;

writeln('voulez vous ajouter des informations dans le fichier ');
write('Si Oui taper 1 si Non taper 0 : ');
read(ajoue);

	if (ajoue = 1) Then
	Begin
		Assign(F, 'fichier1_integrale.dat');
		Reset(F);
		while not eof(F) Do
		Begin
		read(F,p);

					 write('Entrer le prenom de l''etudiant : ');
					 readln(p.prenom);

					 write('Entrer le nom de l''etudiant : ');
					 readln(p.nom);

					 write('Entrer la classe de l''etudiant : ');
					 readln(p.classe);

           writeln('============================================');
					 writeln('Entrer les notes de ', p.prenom ,' ', p.nom);
					 writeln('============================================');

					 write('Entrer la 1er note : ');
					 read(p.note1);

					 write('Entrer la 2er note : ');
					 read(p.note2);

					 write('Entrer la 3er note : ');
					 read(p.note3);
		write(F,p);
		end;
		Close(F);
		end
		else if (ajoue = 0) Then
		Begin
				writeln;
				writeln('Fin de la programme');
				exit;
		end;

		 Assign(F, 'fichier1_integrale.dat');
		 Reset(F);
		 i := 1;

while not Eof(F) Do
Begin
		read(F, p);

		writeln('===================================');
		writeln('Numero ',i, ' : ',p.prenom ,' ', p.nom);
		writeln('===================================');

		writeln('Prenom : ', p.prenom);
		writeln('Nom : ', p.nom);
		writeln('Classe : ', p.classe);
		writeln('Les notes de ',p.prenom,' ',p.nom,' sont : ',p.note1:0:0,'; ',p.note2:0:0,' et ',p.note3:0:0 );
		writeln('La moyenne des notes est : ',(p.note1 + p.note2 + p.note3)/3:0:2);
		writeln;
		i := i + 1;
end;

		close(F);

	readkey;
END.  // end principal