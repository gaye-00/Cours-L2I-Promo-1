Program exo_8;
uses wincrt;
Var prenom, nom : string;

BEGIN

		write('Entrer votre prenom : ');
		readln(prenom);

		write('Entrer votre nom : ');
		readln(nom);

		writeln('===================');
		writeln(prenom + nom);  // var := concat(prenom , nom);
		writeln('===================');


	 Readkey;
END.