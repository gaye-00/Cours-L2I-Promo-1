program exercivce_td2_5;
uses wincrt;
Var
	x, y, l : real;

Begin

	write('Entrer le dividende : ');
	read(x);

	write('Entrer le diviseur : ');
	read(y);

	if (y = 0) then
   writeln('Operation impossible')

		Else
	   begin
		 		 l := x / y;
	    	 writeln('Le quotient est ',l:0:2);
	   end;

END.