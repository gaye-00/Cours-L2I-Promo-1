Program parfait;
Uses WinCrt;
Var nombre, quatre, reste, som, i : Integer;

BEGIN

		nombre := 6; quatre := 0; som := 0;
		Repeat
				 for i := 1 to (nombre div 2) Do
				 Begin
						 reste := nombre mod i;
						 if (reste = 0) Then
						 		som := som + i;
				 end;

				 if (nombre = som) Then
				 Begin
				 		writeln;
				 		writeln('=============================');
						writeln('Le nombre ',nombre,' est parfait');
						writeln('=============================');
						quatre := quatre + 1;
						//exit;
				 end;

				 //Else
				 		//writeln(nombre);

						nombre := nombre + 1;
						
		Until (quatre = 4);


		readkey;
END.