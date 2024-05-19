Program exo_12;
uses wincrt;
Var	nom : Array[1..1000] of string;
		notes : Array[1..1000] of real;
		nombre, i : Integer;

BEGIN

		Repeat
				write('Entrer le nombre de candidats : ');
				readln(nombre);
		Until (nombre > 0) and (nombre <= 1000);

		writeln;
		for i := 1 to nombre Do
		Begin
				write('Entrer le nom du candidat(e) n°',i,' : ');
				readln(nom[i]);
		end;

		writeln;
		for i := 1 to nombre Do
		Begin
				write('Entrer la note de ',nom[i],' : ');
				read(notes[i]);
				while ((notes[i] < 0 )or (notes[i] > 20)) Do
				Begin
						writeln;
						writeln('La note entrer est non valide');
						write('Entrer encore une note enrte 0 et 20 : ');
						read(notes[i]);
				end;
		end;

		writeln;
		writeln('La liste des candidats admis sont');
		for i := 1 to nombre Do
		Begin
				if notes[i] >= 10 Then
				 writeln(nom[i],' : ',notes[i]:0:2);
		end;


	 Readkey;
END.