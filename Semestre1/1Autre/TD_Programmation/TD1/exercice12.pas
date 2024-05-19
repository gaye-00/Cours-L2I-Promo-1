program exercivce12;
uses wincrt;
Var
	 nb_livres, prix_livre, prix_total ,reduction, pourcentage : real;

Begin

  write('Entrer le nombre de livres que vous voulez acheter : ');
	read(nb_livres);

	while (nb_livres <= 0) do
	Begin
	  writeln;
		writeln('Attention le nombre de livre enter est non valide');
		write('Entrer encore le nombre de livre svp : ');
		read(nb_livres);
	end;

  writeln;
	write('Quel est le prix unitaire du livre : ');
	read(prix_livre);

	while (prix_livre <= 0) do
	Begin
	  writeln;
		writeln('Attention le prix unitaire du livre enter est non valide');
		write('Entrer encore le prix unitaire svp : ');
		read(prix_livre);
	end;
	
	writeln;
	write('Entrer la reduction dont beneficie le client en % :');
	read(pourcentage);

	while ((pourcentage < 0) or (pourcentage > 100)) Do
	 Begin
	  writeln;
	 	writeln('Attention le pourcentage entrer n''est pas bon');
		write('Entre encore le pourcentage svp : ');
		read(pourcentage);
	 end;
	
  writeln;
	writeln('Aujourd''hui y''a ',pourcentage:0:0,'% de reduction ');

	prix_total := (nb_livres * prix_livre);
	reduction := (prix_total * pourcentage)/100;

  writeln;
	writeln('Votre reduction est ',reduction:0:2);
	writeln('Le montant de la commande a payer est ',prix_total - reduction:0:2);

END.