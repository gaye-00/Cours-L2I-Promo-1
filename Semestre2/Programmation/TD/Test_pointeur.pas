Program test_pointeurs;
var nb : Integer;
	p : ^Integer;
///////////////////////////////////////////////////////////////////////////
Begin // Debut du prgramme principal
	nb := 50;
	p := @nb;
	p^ := 25;
	writeln('La valeur est maitenant : ', nb);

End.  // Fin du prgramme principal