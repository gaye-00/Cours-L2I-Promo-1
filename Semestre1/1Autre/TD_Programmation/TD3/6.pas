Program exercice_td2_3_6;
uses wincrt;
Var
	 T : Array [1..1000] of real;
	 i, j : Integer;
	 grand : real;

Begin
		grand := 0;
		for i := 1 to 1000 Do
		 Begin
					write(i,' :Entrer successivement des nombres reels : ');
		      read(T[i]);

					if T[i] >= grand Then
					 Begin
					     grand := T[i];
							 j := i;
					 end;

						if (T[i] = 0) Then
					 	 Begin
						     writeln;
							   writeln('Le maximum est ',grand:0:2,' et sa position est ',j );
							   exit;
					 	 end;
		 end;

end.