Program exercivce_td2_4;
Uses Wincrt;
Var
  x, y, z : integer;
Begin
  Write('Entrer le nombre X : ');
  read(x);
	
  Write('Entrer le nombre Y : ');
  read(y);
	
  Write('Entrer le nombre Z : ');
  read(z);
	
  If ((x = y) And (x = z))  Then
	 Writeln('Les trois nombres entres sont egaux')
	 
   else If (x >= y) And (x >= z) Then
    Writeln('Le maximum est ',x)
		
    Else If ((y >= x) And (y >= z)) Then
     Writeln('Le maximum est ', y)
		 
     Else If ((z>= x) And (z >= y))  Then
      Writeln('Le maximum est ',z);
		
		 

{if ((y > x) and (y > z)) Then
			 writeln('Le maximum est ',y:0:2);

			 	if ((z > x) and (z > y)) then
				 writeln('Le maximum est ', z:0:2);

				 	if ((x=y) and (x > z)) Then
					 writeln('Le maximum est ', x:0:2);

					 	if ((x=z) and (x > y)) then
						 writeln('Le maximum est ',y:0:2);

							if ((y > x) and (y=z)) then
						   writeln('Le maximum est ',y:0:2);

							 	if ((x > y) and (y=z)) then
						     writeln('Le maximum est ',x:0:2);}
End.