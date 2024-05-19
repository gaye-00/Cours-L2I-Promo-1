Program fichiers;
uses WinCrt;
Var F : file of real;
    x : real;


Begin
		ClrScr;
		Assign(F, 'c:\gaye');
		ReWrite(F);
     //write('Abdoulaye ');
		 //write('Gaye');

		 repeat
		     write('Enter une valeur : ');
		     read(x);
		     write(F, x);
		 until x = 0;


		Close(F);

 readkey;
end.