program test;
uses wincrt;
Var
		N : real;

Begin

	Repeat
	 write('Entrer la valeur de N : ');
		read(N);
	 if N < 10 Then
	 write('Entrer un nombre plus grands mon frr');
	 
	until (N > 10);

	 Repeat
	  write('Entrer la valeur de N : ');
		read(N);
	 	if N > 20 Then
	 		write('Entrer un nombre plus petit mon frr');
			until (N < 20);
			
	 		if (N > 10) and (N < 20) Then
	 			write('La note entrer est bonne MERCI');

				//while (N < 10) or (N > 20) Do
				
	//until (N > 10) or (N < 20)

	 {else
	 begin 
	 read(N);
	 end;}

END.