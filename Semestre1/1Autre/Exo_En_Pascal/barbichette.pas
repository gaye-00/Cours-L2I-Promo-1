Program carre_dun_nombre;
Uses WinCrt;
var
	 nb,carr:	real;
Begin	                                                     
     Write('Entrez une valeur de nb : ');
     Read(nb);
		 WriteLn;
     carr := nb * nb;
     Write('le carre de ce nombre est ',carr:0:3);
End.                                                  