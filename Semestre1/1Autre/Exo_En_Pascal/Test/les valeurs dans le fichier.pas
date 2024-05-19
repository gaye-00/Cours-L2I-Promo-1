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
		Reset(F);

		while not Eof(F) Do
		read(F, p);
		writeln('Prenom : ', p.prenom);
		writeln('Nom : ', p.nom);
		writeln('Classe : ', p.classe);
		writeln('Les notes de ',p.prenom,' ',p.nom,' sont : ',p.note1:0:0,'; ',p.note2:0:0,' et ',p.note3:0:0 );

		close(F);
		
		ReadKey
END.