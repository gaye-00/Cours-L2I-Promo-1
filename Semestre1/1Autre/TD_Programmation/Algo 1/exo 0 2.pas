Program exercice_nombre_bus;
uses wincrt;
Var  n, k, reste : Integer;

Begin

		write('Donner le nombre n de personnes : ');
		read(n);
		write('Entrer la capacité des bus : ');
		read(k);

		reste := n mod k;
		if (n mod k <> 0) Then
		Begin
				writeln('Pour transporter ', n,' personnes avec des bus de ',k,' places , il faut : ',n div k + 1,' bus');
				writeln('Le nombre de personnes qui ont pris place dans le dernier bus sont : ', reste);
		end
		else
		Begin
				writeln('Pour transporter ',n,' personnes avec des bus de ',k,' places, il faut : ',n div k,' bus');
		end;

end.