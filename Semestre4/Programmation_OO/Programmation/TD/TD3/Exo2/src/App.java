import gestionEtudiants.*;

public class App {

	public static void main(String[] args) {
		Classe sc = new Classe("Master 1 L2I");

		Etudiant st1 = new Etudiant("Masour", "Diop", 5689567);
		Etudiant st2 = new Etudiant("Matar", "Cisse", 8763789);
		Etudiant st3 = new Etudiant("Laye", "Gueye", 9827722);

		sc.ajouterEutudiant(st1);
		sc.ajouterEutudiant(st2);
		sc.ajouterEutudiant(st3);

		sc.afficherEtudiants();
	}
}