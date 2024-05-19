import mypaquets.*;
import java.util.ArrayList;

public class Collection {
	public static final int anneCourante = 2019;

	public static void main(String args[]) {
		ArrayList <Ustensile> ustensiles = new ArrayList <Ustensile>();
		ustensiles.add(new AssietteRonde(1926,8.4));
		ustensiles.add(new Cuillere(1881,7.3));
		ustensiles.add(new AssietteCarree(1935,5.6));
		ustensiles.add(new Cuillere(1917,8.8));
		ustensiles.add(new AssietteRonde(1837,5.4));

		afficherUstensiles(ustensiles);
		afficherCuilleres(ustensiles);
		afficherSurfaceAssiettes(ustensiles);
		afficherValeurTotale(ustensiles);
	}

	public static void afficherUstensiles(ArrayList <Ustensile> ustensiles) {
		for(Ustensile estence : ustensiles)
			System.out.println(estence);
	}

	public static void afficherCuilleres(ArrayList <Ustensile> ustensiles) {
		int nombre = 0;
		for(Ustensile estence : ustensiles)
			if(estence instanceof Cuillere)
				nombre++;

		System.out.println("\nIl y a " + nombre + " cuillères");
	}

	public static void afficherSurfaceAssiettes(ArrayList <Ustensile> ustensiles) {
		double somme_surface = 0.0;

		for(Ustensile estence : ustensiles)
			if(estence instanceof Assiette)
				somme_surface += ((Assiette) estence).surface();

		// for(int i = 0; i < ustensiles.size(); ++i) {
		// 	if(ustensiles.get(i) instanceof Assiette)
		// 		somme_surface += ustensiles.get(i).surface();
		// }

		System.out.println("La somme des surfaces des assiettes : " + somme_surface);
		System.out.printf("La somme des surfaces des assiettes : %.2f \n" ,somme_surface);
	}

	public static void afficherValeurTotale(ArrayList <Ustensile> ustensiles) {
		int somme = 0;
		for(Ustensile estence : ustensiles)
			somme += estence.valeur_objet();

		System.out.println("La somme des valeurs de tous les ustensiles est : " + somme + " francs CFA");
	}
}