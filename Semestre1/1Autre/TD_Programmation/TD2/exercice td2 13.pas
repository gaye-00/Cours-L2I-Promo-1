Program volume_pieces;
uses wincrt;
Var
  longueur , largeur, hauteur : real;
	volume, nombre : real;

Begin

		write('Entrer la longueur de la piece en metre: ');
		read(longueur);

		 while (longueur <= 0) Do
		 Begin
		     writeln;
				 writeln('La longueur entree est non valide');
				 write('Entrer encore la longueur svp en metre : ');
				 read(longueur);
		 end;

		write('Entrer la largeur de la piece en metre : ');
		read(largeur);

		 while (largeur <= 0) Do
		 Begin
		     writeln;
				 writeln('La largeur entree est non valide');
				 write('Entrer encore la largeur svp en metre : ');
				 read(largeur);
		 end;

		 while (longueur < largeur) Do
		 Begin
		     writeln;
				 writeln('La longuer ne peut pas etre plus grande que la largueur');
				 writeln('Entrer encore la longueur svp en metre : ');
				 read(longueur);
		 end;

		write('Entrer la hauteur de la piece en metre : ');
		read(hauteur);

		 while (hauteur <= 0) Do
		 Begin
		     writeln;
				 writeln('La hauteur entree est non valide');
				 write('Entrer encore la hauteur svp en metre : ');
				 read(hauteur);
		 end;

		volume := (longueur * largeur * hauteur);
		nombre := (volume / 8);
		writeln('Le volume est ',volume:0:2,' m3');

    if (((nombre / abs(nombre)) <> 0)) Then
	   Begin
		     writeln('Le nombre de climatiseur à acheter est : ',abs(nombre) + 1:0:0);
		 end;

		 if (((nombre / abs(nombre)) = 0)) Then
	   Begin
		     writeln('Le nombre de climatiseur à acheter est : ',abs(nombre):0:0);
		 end;



end.