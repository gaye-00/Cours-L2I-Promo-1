// package gestionEtudiants;
import mypaquets.*;

public class Main {

	public static void main(String[] args) {
		
		Etudiant etu1 = new Etudiant("Abdoulaye", "Gaye");
		Etudiant etu2 = new Etudiant("Mansour", "Diop", 20203104);

		System.out.println(etu1.toString());
		System.out.println(etu2.toString());
	}
}