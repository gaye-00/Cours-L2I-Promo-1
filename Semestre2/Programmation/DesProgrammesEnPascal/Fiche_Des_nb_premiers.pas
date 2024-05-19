program les_nb_premiers;
var F : text;
	nb : Longword;
	i : Integer;
	ok : Boolean;
///////////////////////////////////
Begin
	ok := true; nb := 3;
	assign(F, 'Les_nombres_premiers.dat');
	rewrite(F);
		while (ok) do
		begin
			nb := 2*nb + 1;
			writeln(nb);
			write(F, nb,' ');
			if (nb = 4294967295) then
				break;
		end;
	close(F);


End.