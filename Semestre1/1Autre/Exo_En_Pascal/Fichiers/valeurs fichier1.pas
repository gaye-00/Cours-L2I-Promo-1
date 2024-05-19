Program valuer_fichier;
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

BEGIN
		 Assign(F, 'fichier1.dat');
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
END.