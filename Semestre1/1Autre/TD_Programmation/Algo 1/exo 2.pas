Program exercice_nombre_bus;
uses wincrt;
Var  n, k : real;

Begin

		write('Donner le nombre n de personnes : ');
		read(n);
		write('Entrer la capacité des bus : ');
		read(k);

		while (Abs(n) <> n) Do
		Begin
				writeln('Le nombre de personnnes entré ne doit pas contenir de virgule');
				write('Entrer encore le nombre de personne : ');
				read(n);
		end;

		while (abs(k) <> k) Do
		Begin
				writeln('La capacité des bus entré ne doit ne doit pas contenir de virgule');
				write('Entrer encore la capacité des bus : ');
				read(k);
		end;

		if (n / k = 0) Then
		Begin
				writeln('Pour transporter', n:0:0,' personnes avec des bus de ',k:0:0,' places , il faut : ',n/k:0:0,' bus');
		end
		else
		Begin
				writeln('Pour transporter ',n:0:0,' personnes avec des bus de ',k:0:0,' places, il faut : ',n/k+1:0:0,' bus');
				writeln('Le nombre de personnes qui ont pris place dans le dernier bus sont : ', (k*(abs(n/k+1))-n):0:0 );
		end;

end.