Program fichiers;
uses WinCrt;
Var F : file of real;
    x : real;


Begin
		ClrScr;
		Assign(F, 'c:\gaye');
		Reset(F);

   write('Les valeurs qui sont dans le fichier sont : ');
		 while Not (Eof(F)) Do
		 Begin
		     read(F,x);
		     write(x:0:2,' ');
		 end;

		 writeln;writeln;
		 writeln('Voulez vous ajouter de nouvelles valeurs non nuls au fichier ');
		 writeln('Si Oui entre une valeur si Non entrer 0');
		 writeln;
		 repeat
		     write('Enter une valeur non nul : ');
		     read(x);
				  if (x <> 0) Then
		     write(F, x);
		 until x = 0;

		Close(F);

 readkey;
end.  