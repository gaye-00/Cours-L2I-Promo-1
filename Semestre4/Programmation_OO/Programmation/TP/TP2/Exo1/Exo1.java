
public class Exo3 {

	public static void main(String[] args) {

		// 1. Créer un tableau t de 4 références sur des chaînes de caractères.
		String[] t = new String[4];

		// 2. Créer une chaîne de caractères dont le contenu est "Bon".
		String chaine = "Bon";

		// 3. Affecter les 2 premiers éléments du tableau avec cette chaîne et le troisième avec la chaîne "Bonjour".
		t[0] = chaine;
		t[1] = chaine;
		t[2] = "Bonjour";

		// 4. Créer une nouvelle chaîne de caractères dont le contenu est à nouveau "Bon" et affecter cette
		// 	  chaîne au dernier élément du tableau t.
		String chaine1 = "Bon";
		t[3] = chaine1;

		// 5. Comparer 2 à 2 les éléments du tableaux en utilisant les méthodes String.equals(),
		//    String.compareTo(), et l'opérateur ==. Que constate-t-on ?

		for(int i = 0; i < t.length; ++i)
			for(int j = 0; j < t.length; ++j)
				if(i != j) {
					if(t[i] == t[j])
						System.out.println("t["+i+"]["+j+"] : " + t[i] + ", " + t[j] + " = Egaux");
					else
						System.out.println("t["+i+"]["+j+"] : " + t[i] + ", " + t[j] + " = Different");
				}

		System.out.println("\n--------------------------------------------------------------------------------");

		for(int i = 0; i < t.length; ++i)
			for(int j = 0; j < t.length; ++j)
				if(i != j) {
					if(t[i].equals(t[j]))
						System.out.println("t["+i+"]["+j+"] : " + t[i] + ", " + t[j] + " = Egaux");
					else
						System.out.println("t["+i+"]["+j+"] : " + t[i] + ", " + t[j] + " = Different");
				}

		System.out.println("\n--------------------------------------------------------------------------------");

		// for(int i = 0; i < t.length; ++i)
		// 	for(int j = 0; j < t.length; ++j)
		// 		if(i != j) {
		// 			if(t[i].compareTo(t[j]))
		// 				System.out.println("t["+i+"]["+j+"] : " + t[i] + ", " + t[j] + " = Egaux");
		// 			else
		// 				System.out.println("t["+i+"]["+j+"] : " + t[i] + ", " + t[j] + " = Different");
		// 		}


		// 6. Concaténer t[0] avec la chaîne "jour" en utilisant la méthode String.concat() ou l'opérateur +.
		//    Comparer 2 à 2 les éléments du tableaux en utilisant les méthodes String.equals(),
		//    String.compareTo(), et l'opérateur ==. Que constate-t-on ?

		System.out.println(t[0].concat("jour"));
	}
}