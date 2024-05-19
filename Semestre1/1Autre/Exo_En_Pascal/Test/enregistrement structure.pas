Program structure_etudiants;
uses wincrt;
Type etudiant = Record
		prenom : String[25];
		nom : String[20];
		classe : String[30];
		note1, note2, note3 : real;
end;

Var  p : etudiant;
     moyenne : real;

BEGIN

		write('Entrer le prenom de l''etudiant : ');
		readln(p.prenom);

		write('Entrer le nom de l''etudiant : ');
		readln(p.nom);

		write('Entrer la classe de l''etudiant : ');
		readln(p.classe);

    writeln;
		write('Entrer la note numero 1 de l''etudiant : ');
		read(p.note1);

		write('Entrer la note numero 2 de l''etudiant : ');
		read(p.note2);

		write('Entrer la note numero 3 de l''etudiant : ');
		read(p.note3);

		writeln;
		writeln('=====================================================');
		writeln(p.prenom,'  ',p.nom,' de la classe ',p.classe);
		writeln('Les notes : ',p.note1:0:2,' , ',P.note2:0:2,' et ',p.note3:0:2);
		writeln('=====================================================');
		moyenne := (p.note1+p.note2+P.note3)/3;
		writeln('La moyenne de ',P.prenom, ' ',p.nom,' est ',moyenne:0:2);
		readkey

END.