program exercice13;
uses wincrt;
Var
		distance, cons, prix_du_litre, nombre_de_litre, cout : real;

Begin

 write('Entrer la distance en Km : ');
 read(distance);
 writeln('Vous avez entrez ',distance:0:0, ' Km');

 while (distance <= 0) do
 Begin
		 writeln('La distance entrer n''est pas bonne');
		 write('Entrer encore la distance : ');
		 read(distance);
 end;

 write('Entrer la consommation moyenne en carburant (Litres / 100Km): ');
 read(cons);

 while (cons <= 0) Do
 Begin
     writeln;
		 writeln('La consommation entrer n''est pas bonne');
		 write('Entrer encore la consommation svp : ');
		 read(cons);
 end;
 
 writeln;
 write('Entrer le prix du litre de carburant en Franc CFA : ');
 read(prix_du_litre);

 while (prix_du_litre <= 0) Do
 Begin
 		 writeln;
		 writeln('Le prix du litre entrer est non valide');
		 write('Entrer encore le prix svp : ');
		 read(prix_du_litre);
 end;

 nombre_de_litre := cons * distance;
 cout := (nombre_de_litre * prix_du_litre)/100;

 writeln;
 writeln('Le coût total du carburant necessaire pour le voyage est ', cout:0:2,' Franc CFA');

END.