public class Exercice2 {

	public static void main(String[] args) {
		
		// 1. Créer un tableau de 10 valeurs.
		System.out.println("1)");
		int[] tab = new int[10];

		//------------------------------------------------------------------------------------------------//
		// 2. Ecrire un programme qui remplit aléatoirement un tableau.

		System.out.println("2)");
		for (int i = 0; i < tab.length; ++i)
			tab[i] = rand();
		System.out.println();

		for(int element : tab)
			System.out.print(element + "\t");
		System.out.println();

		//------------------------------------------------------------------------------------------------//
		// 3. Ecrire un programme qui incrémente la valeur d’une variable initialisée à 0, insère 30 valeurs
		// incrémentés dans un tableau, et affiche le tableau.
		System.out.println("3)");

		int[] tab2 = new int[30];
		for (int i = 0; i < tab2.length; ++i)
			tab2[i] = i + 1;

		for(int element : tab2)
			System.out.print(element + "\t");
		System.out.println();

		//------------------------------------------------------------------------------------------------//
		// 4. Ecrire un programme qui remplit un tableau de 1 à 50, transforme les valeurs paires en impaires par
		// incrémentation de 1, affiche le nouveau tableau et calcule sa somme.

		System.out.println("4)");

		int[] tab3 = new int[50];
		tab3[0] = 1;
		// for (int i = 1; i < tab3.length; ++i) {
		// 	if(tab3[i] % 2 == 0)
		// 		tab3[i] += 1;
		// 	else
		// 		tab3[i] = i + 1;
		// }

		for(int i = 0; i < tab3.length; ++i)
			tab3[i] = i + 1;

		for(int i = 0; i < tab3.length; ++i)
			if(tab3[i] % 2 == 0)
				tab3[i] += 1;

		for(int element : tab3)
			System.out.print(element + "\t");
		System.out.println();

		//------------------------------------------------------------------------------------------------//
		// 5. Ecrire un programme pour remplir un tableau aléatoirement et afficher les valeurs paires de ce
		// tableau.

		System.out.println("5)");
		int[] tab4 = new int[10];

		for(int i = 0; i < args.length; ++i){
			tab4[i] = rand();

			if(tab4[i] % 2 == 0)
				System.out.print(tab4[i] + "\t");
		}

		// for(int i = 0; i < args.length; ++i)
		// 	System.out.print(tab4[i] + "\t");

		System.out.println();
	}

	public static int rand() {

		int Max = 100;
		int Min = 0;
		return (Min + (int)(Math.random() * ((Max - Min) + 1)));
	}
}