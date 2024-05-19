Program exo11;
uses WinCrt;
Var i, j : Integer;
		notes, note_min, note_max, som, moy, min, max : Real;

BEGIN

		i := 0; j := 0; notes := 0; som := 0; min := 20; note_min := 20; note_max := 0; max := 0;
		while (i <= 50) and (notes <> -1) Do
		Begin

				i := i + 1;
				Repeat
						write('Entrer la note numero ',i,' : ');
						read(notes);
				Until (notes >= 0) and (notes <= 20) or (notes = -1);

				if (notes <> -1) Then
				Begin
						som := som + notes;
						if (notes > max) Then
							max := notes;
							
							if (notes < min) Then
								min := notes;

								if (notes < note_min) Then
									note_min := notes;

									if (notes > note_max) Then
										note_max := notes;

										if (notes < 10) Then
											j := j + 1;
				end;

		end; 

		writeln;
		if (i = 50) Then
			moy := som / 50

			Else
				moy := som / (i - 1);
				
		writeln('La moyenne des notes est : ',moy:0:2);
		writeln('Le nombre de notes inferieur à 10 est : ',j);
		writeln('La note minimal est : ',note_min:0:2);
		writeln('La note maximal est : ',note_max:0:2);

		readkey;
END.