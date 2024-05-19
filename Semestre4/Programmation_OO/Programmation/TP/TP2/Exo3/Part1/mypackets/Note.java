package mypackets;
import java.util.ArrayList;

public class Note {

	public static void Ajouter(ArrayList<Double> N, double note) {
		N.add(note);
	}

	public static void affichage(ArrayList<Double> N) {
		for(double note : N)
			System.out.print(note + "\t");
	}

	public static double moyenne(ArrayList<Double> N) {
		double somme = 0;
		for(double note : N)
			somme += note;

		return somme/N.size();
	}

}