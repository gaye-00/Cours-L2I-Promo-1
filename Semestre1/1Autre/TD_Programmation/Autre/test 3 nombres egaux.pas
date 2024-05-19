Program exercivce_td2_4;
Uses Wincrt;
Var
  a, b, c : integer;
Begin
  Write('Entrer le nombre A : ');
  read(a);
	
  Write('Entrer le nombre B : ');
  read(b);
	
  Write('Entrer le nombre C : ');
  read(c);

  	if (( a >= b) and ( a > c)) Or (( a > b) and ( a >= c)) Then
		 writeln(a,' est le maximum');

		 	if (( b > a) and ( b > c)) Or (( b > a) and ( b >= c)) Then
			 writeln(b,' est le maximum')

				else if (( c >= b) and ( c > a)) Or (( c > b) and ( c >= a)) then
				 writeln(c,' est le maximum')

        else if (a = c ) and ( b = c) then
					 writeln('test');

End.