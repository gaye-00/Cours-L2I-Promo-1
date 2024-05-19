import java.util.ArrayList;
import mypackets.*;

public class Exo3 {

	public static void main(String[] args) {
		
		ArrayList<Double> BloqueNote = new ArrayList<Double>();
		Note.Ajouter(BloqueNote, 12);
		Note.Ajouter(BloqueNote, 14);
		Note.Ajouter(BloqueNote, 9);

		System.out.println("La moyenne des notes est : " + Note.moyenne(BloqueNote));
		Note.Ajouter(BloqueNote, 13);
		System.out.println("La moyenne des notes est : " + Note.moyenne(BloqueNote));

		System.out.println();
		Note.affichage(BloqueNote);

		System.out.println("\n\n");
	}
}