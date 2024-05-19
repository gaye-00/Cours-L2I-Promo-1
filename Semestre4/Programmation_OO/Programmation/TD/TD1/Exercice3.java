public class Exercice3 {

	public static void main(String[] args) {

		// 1. Ecrire un programme qui teste la similarité de deux chaines de caractères et affiche vrai ou faux.
		String s = "Bonjour";
		String s2 = "Bonsoir";

		System.out.println(s.equals(s2));

		// 2. Ecrire un programme qui remplace un caractère dans une chaine de caractère par un espace.

		System.out.println(s.replace("j", "s"));

		// 3. Ecrire un programme qui détermine si un mot est un palindrome ou non (Un mot est dit palindrome
		// s’il peut se lire indifféremment des deux sens).

		String original = "anna";
		String reverse = "";

		for(int i = original.length()-1; i >= 0; --i)
			reverse = reverse + original.charAt(i);

		if(original.equals(reverse))
			System.out.println("Les deux mots sont palindrome");
		else
			System.out.println("Non palindrome");
	}
}