Program fiche_nb_premiers;
var F : file of Integer;
	i, pr_F, racine : Longword;
	ok : Boolean;
///////////////////////////////////////////////////////////////////////////
Begin // Debut du prgramme principal
	i := 3; pr_F := 0;
	assign(F, 'nombre_premier_quick.dat');
	rewrite(F);
		write(F, 2);
		write(F, 3);

		while (i > 0) do
		begin
			i := i + 2; ok := true; seek(F, 0);
			while (not eof(F) and ok) do
			begin
			 	read(F, pr_F);
			 	if ((i mod pr_F = 0)) then
			 		ok := false
			end;

			if (ok) then
			begin
				write(F, i);
				writeln(i,' est un nombre premier');
			end;
		end;
	close(F);


End.  // Fin du prgramme principal