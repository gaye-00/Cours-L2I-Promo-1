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

BEGIN

		Assign(F, 'etudiantf.dat');
		reset(F);
		while not eof(F) Do
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

					 write('Entrer la 3er note de : ');
					 read(p.note3);
		write(F,p);

		writeln;writeln;
		while not Eof(F) Do
		read(F, p);
		writeln('Prenom : ', p.prenom);
		writeln('Nom : ', p.nom);
		writeln('Classe : ', p.classe);
		writeln('Les notes de ',p.prenom,' ',p.nom,' sont : ',p.note1:0:0,'; ',p.note2:0:0,' et ',p.note3:0:0 );
		
		close(F);

		
		readkey;
END.
		 