Program fichiers;
uses wincrt;
Var F : file of real;


Begin

		Assign(F, 'c:\gaye.text');
		ReWrite(F);
     write('Abdoulaye ');
		 write('Gaye');
		Close(F);
		
 readkey;
end.