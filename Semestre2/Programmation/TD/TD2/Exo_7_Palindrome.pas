Program palindrome_test;
var mot : String;
	long : Integer;
//----------------------------------------------------------------------//
function palindrome(m: String; p, d : Char): Boolean;
begin
	if (p <> d) then
		palindrome := false
	else
		palindrome := palindrome(m, succ(m[1]), pred(m[length(m)]));
end;
//----------------------------------------------------------------------//

Begin //////////////////// Debut du prgramme principal ////////////////////

	write('Entrer un mot : ');
	readln(mot);

	long := length(mot);
	if (palindrome(mot, mot[1], mot[long])) then
		writeln(mot,' est un palindrome')
	else
		writeln(mot,' n''est pas un palindrome');

End.  //////////////////// Fin du prgramme principal ////////////////////