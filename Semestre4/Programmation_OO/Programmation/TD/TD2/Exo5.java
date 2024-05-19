import java.io.InputStreamReader;
import java.io.BufferedReader;

public class Exo5 {
	public static void main(String[] args) throws Exception {
		
		// 1. Ecrire un programme qui teste la similarité de deux chaines de caractères et affiche vrai ou faux.
		InputStreamReader isr = new InputStreamReader(System.in);
		BufferedReader br = new BufferedReader(isr);

		System.out.print("Donner la premiere chaine : ");
		String chaine1 = br.readLine();

		System.out.print("Donner la deuxieme chaine : ");
		String chaine2 = br.readLine();

		if(chaine1.equals(chaine2))
			System.out.println("Vrai");
		else
			System.out.println("Faux");

		// 2. Ecrire un programme qui remplace un caractère dans une chaine de caractère par un espace.
		chaine2 = chaine1.replace("s", "c");
		System.out.println(chaine2);

		// 3. Ecrire un programme qui détermine si un mot est un palindrome ou non (Un mot est dit palindrome
		//    s’il peut se lire indifféremment des deux sens).

		System.out.print("Donner un mot quelconque : ");
		String chaine3 = br.readLine();

		// int i = 0, longue = chaine3.length;
		// boolean ok = true;
		// while(i < (longue / 2) && ok) {
		// 	if(chaine3[i] != chaine3[longue - i])
		// 		ok = false;
		// }

		// if(ok)
		// 	System.out.println(chaine3 + "est un palindrome");
		// else
		// 	System.out.println(chaine3 + "n'est pas un palindrome");

		int i = 0, longueur = chaine3.length()-1;
		boolean egale = true;
 
		while(i < longueur/2 && egale) {
			if(chaine3.charAt(i) == chaine3.charAt(longueur-i)) {
				egale = true;
				++i;
			}
			else
				egale = false;
		}

		if(egale)
			System.out.println(chaine3 + " est un palindrome");
		else
			System.out.println(chaine3 + " n'est pas un palindrome");
	}
}