Program palindrome_correction;
var mot : String;

//----------------------------------------------------------------------//
function palindrome(m : String): Boolean;
var n : Integer;
begin
	n := length(m);
	if ((n = 0) or (n = 1)) then
		palindrome := true
	else if (m[1] = m[n]) then
		palindrome := palindrome(copy(m, 2, n-2))
	else
		palindrome := false;
end;
//----------------------------------------------------------------------//

Begin //////////////////// Debut du prgramme principal ////////////////////


	write('Entrer un mot : ');
	readln(mot);

	if (palindrome(mot))then
		writeln(mot,' est un palindrome')
	else
		writeln(mot,' n''est pas un palindrome');

End.  //////////////////// Fin du prgramme principal ////////////////////