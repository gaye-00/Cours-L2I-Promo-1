Program boucle_controlee;
Uses WinCrt;
Var dp, fp, ip : Integer;
Procedure boucleCroissane(d, f, i : Integer);
Begin
		if (d <= f) Then
		Begin
				writeln(d);
				boucleCroissane(d+i, f, i);
		end;
end;

BEGIN

		write('Enter les elements : ');
		read(dp, fp, ip);
		boucleCroissane(dp, fp, ip);

		readkey;
END.