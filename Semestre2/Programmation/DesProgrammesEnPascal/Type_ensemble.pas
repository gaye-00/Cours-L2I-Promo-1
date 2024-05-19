Program type_ensemble;
Type chiffre = 1..9;
	ensemble = set of chiffre;
var ens1, ens2, ens3 : ensemble;
	elem : Integer;

//----------------------------------------------------------------------//

Begin //////////////////// Debut du prgramme principal ////////////////////

	ens1 := [2,3,5,7]; ens2 := [2,4,6,8];
	
	write('Entrer un element a chercher dans l''ensemble 1 : ');
	readln(elem);

	if (elem in ens1) then 
		writeln('L''element est dans l''ensemble')
	else
		writeln('L''element n''est pas dans l''ensemble');

	writeln;
	ens3 := ens1 + ens2;
	//writeln('L''union des deux ensemble sont : ',ens1 + ens2); non permis
	write('Entrer un element a chercher dans l''ensemble d''union : ');
	readln(elem);


	if (elem in ens3) then 
		writeln('L''element est dans l''ensemble')
	else
		writeln('L''element n''est pas dans l''ensemble');

End.  //////////////////// Fin du prgramme principal ////////////////////