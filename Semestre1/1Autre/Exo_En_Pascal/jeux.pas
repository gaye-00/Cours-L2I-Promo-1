program jeux;
uses wincrt;
Var
		i,essai : integer;
PROCEDURE jeu1 (secret : integer);
VAR n, essai : integer;
continuer : boolean;
Begin
		continuer := true; n := 1;
		while continuer do
		begin
				write ('Essai ', n, ' : '); readln (essai);
				if essai < secret then writeln ('+')
				
					else if essai > secret then writeln ('-')
					
						else
						begin
								writeln ('Gagne en ', n, ' coups');
								continuer := false;
	 					end;
				n := n+1;
		end;
end;

Begin

	////i := 3;
	essai := i;
	jeu1(i);
	
END.