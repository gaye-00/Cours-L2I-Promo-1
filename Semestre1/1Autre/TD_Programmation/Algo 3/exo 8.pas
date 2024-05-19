Program manipulation_tableau;
uses wincrt;
Var val_con, i, j, notes : Integer;
		tab : Array[1..20] of Integer;
		//notes : real;

BEGIN

		write('Entrer la valeur conventionnelle : ');
		read(val_con);

		writeln;
		for i := 1 to 20 Do
			tab[i] := 0;

			Repeat
					write('Entrer la note numero 1 : ');
					read(notes);

					while (notes = val_con) or (notes < 0) or (notes > 20) Do
					Begin
							writeln;
							if (notes = val_con) Then
								writeln('Attention la 1er note doit etre diffente de la valeur conventionnelle');

							if (notes < 0) or (notes > 20) Then
								writeln('La note doit etre entre 0 et 20');

							writeln;
							write('Entrer encore la note svp : ');
							read(notes);
					end;
			until ((notes >= 0) and (notes <= 20));

			i := 1; tab[notes] := 1;
			while (notes <> val_con) Do
			Begin
					i := i + 1;
					Repeat
							write('Entrer la note numero ',i,' : ');
							read(notes);
					until ((notes >= 0) and (notes <= 20)) or (notes = val_con);

					if (notes >= 0) and (notes <= 20) Then
							tab[notes] := tab[notes] + 1;
		
			end;

			for i := 1 to 20 Do
			Begin
					write(i,' : ');
					for j := 1 to tab[i] Do
						write('*');
						writeln;
			end;

			writeln;
			for i := 1 to 20 Do
				write(i,'  ');
				writeln;

				for i := 1 to 20 Do
					write('_  ');
					writeln;

					for j := 1 to 20 Do
					Begin
							for i := 1 to 20 Do
							Begin
									if (tab[i] >= 1) Then
									Begin
											write('*  ');
											tab[i] := tab[i] - 1;
									end
									Else
										write('  ');
							end;
							writeln;
					end;


END.