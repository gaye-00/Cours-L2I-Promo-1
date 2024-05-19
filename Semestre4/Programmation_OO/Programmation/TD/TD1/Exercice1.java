import java.util.Scanner;

public class Exercice1 {

	public static void main(String[] args) {

		// 1. Ecrire un programme qui permet de recevoir deux nombres entiers et les affiche.
		System.out.println("1)");
		Scanner sc = new Scanner(System.in);

		System.out.print("Donner le premier nombre : ");
		int nombre1 = sc.nextInt();

		System.out.print("Donner le deuxieme nombre : ");
		int nombre2 = sc.nextInt();

		System.out.println("Les deux nombres sont : " + nombre1 + " et " + nombre2);
		System.out.println();

		//------------------------------------------------------------------------------------------------//

		// 2. Ecrire un programme qui reçoit deux entiers et renvoi leur somme.

		System.out.println("2)");
		System.out.print("Donner le premier entier : ");
		nombre1 = sc.nextInt();

		System.out.print("Donner le deuxieme entier : ");
		nombre2 = sc.nextInt();

		System.out.println("La somme est : " + somme(nombre1, nombre2));
		System.out.println();

		//------------------------------------------------------------------------------------------------//
		// 3. Ecrire un programme qui reçoit deux entiers et permet d’afficher le nombre le plus grand.

		System.out.println("3)");
		System.out.print("Donner le premier entier : ");
		nombre1 = sc.nextInt();

		System.out.print("Donner le deuxieme entier : ");
		nombre2 = sc.nextInt();

		System.out.println("Le plus grand des deux entiers est " + plusgrand(nombre1, nombre2));
		System.out.println();

		//------------------------------------------------------------------------------------------------//
		// 4. Ecrire un programme qui permet d’initialiser aléatoirement deux nombres, ensuite il les
		// affiche, affiche leur somme et affiche le nombre le plus grand.

		System.out.println("4)");
		nombre1 = rand();
		nombre2 = rand();

		System.out.println("Les deux nombres sont : " + nombre1 + " et " + nombre2);
		System.out.println("La somme est : " + somme(nombre1, nombre2));
		System.out.println("Le plus grand des deux entiers est " + plusgrand(nombre1, nombre2));
		System.out.println();
	}

	public static int somme(int x, int y) {

		return x + y;
	}

	public static int plusgrand(int x, int y) {

		if(x > y)
			return x;

		return y;
	}

	public static int rand() {

		int Max = 100;
		int Min = 0;
		return (Min + (int)(Math.random() * ((Max - Min) + 1)));
	}
}