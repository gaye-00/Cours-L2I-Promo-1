Program le_PGCD_de_deux_nombres;
uses wincrt;
Var  m, n, porteur : Integer;

BEGIN

		Repeat
				 write('Entrer le 1er entier positif : ');
				 read(m);
		until (m >= 0);

		Repeat
				 write('Entrer le 2eme entier positif : ');
				 read(n);
		until (n >= 0);

		writeln;
		if (m = 0) Then
			writeln('Le PGCD des deux entiers est  ',n)

				else if (n = 0) Then
					writeln('Le PGCD des deux entiers est ',m)

						else if (m >= n) Then
						Begin
								while (n <> 0) Do
								Begin
										porteur := n;
										n := m mod n;
										m := porteur;
								end;
								writeln('Le PGCD des deux entiers est ',m);
						end

							else if (n >= m) Then
							Begin
									while (m <> 0) Do
									Begin
											porteur := m;
											m := n mod m;
											n := porteur;
									end;
									writeln('Le PGCD des deux entiers est ',n);
							end;


	 Readkey;
END.