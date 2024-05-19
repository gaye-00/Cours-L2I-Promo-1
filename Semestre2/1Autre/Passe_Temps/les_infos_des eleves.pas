Program les_infos_des_eleves;
Uses WinCrt;
Type eleve = Record
			prenom : String[50];
			nom : String[20];
			classe : String[50];
			nm_carte : LongInt;
			notes : Array [1..2,1..6] of real;
			end;
Var F : Text;
		p : eleve;

BEGIN

		Assign(F, 'infos.dat');
		ReWrite(F);
						 write('Enter le prenom de l''etudiant: ');
						 readln(p.prenom);

						 write('Enter le nom de l''etudiant : ');
						 readln(p.nom);

						 write('Enter la classe de l''etudiant : ');
						 readln(p.classe);
						 //writeln(F, p.classe);

						 write('Enter le numero de la carte de l''etudiant : ');
						 read(p.nm_carte);

						 writeln(F, p.prenom,' ',p.nom,' Classe : ',p.classe);
						 writeln(F, 'N°CE : ',p.nm_carte);
						 writeln(F);

						 writeln;
						 write('Enter la note du devoir de l''algorithme : ');
						 read(p.notes[1,1]);
						 
						 write('Enter la note de la composition l''algorithme : ');
						 read(p.notes[2,1]);

						 writeln(F);
						 writeln(F,'			ALGORITHEMIQUE');
						 writeln(F, 'Devoir : ',p.notes[1,1]:0:2,' 		Composition : ',p.notes[2,1]:0:2, '		Moyenne : ',(p.notes[1,1] * 0.3 + p.notes[2,1] * 0.7):0:2,'/20');

						 writeln;
						 write('Enter la note du devoir de l''architecture des ordinateurs : ');
						 read(p.notes[1,2]);

						 write('Enter la note de la composition l''architecture des ordinateurs  : ');
						 read(p.notes[2,2]);

						 writeln(F);
						 writeln(F,'			ARCHITECTURE DES ORDINATEURS');
						 writeln(F, 'Devoir : ',p.notes[1,2]:0:2,' 		Composition : ',p.notes[2,2]:0:2, '		Moyenne : ',(p.notes[1,2] * 0.3 + p.notes[2,2] * 0.7):0:2,'/20');
						 
						 
		Close(F);

		readkey;
END.