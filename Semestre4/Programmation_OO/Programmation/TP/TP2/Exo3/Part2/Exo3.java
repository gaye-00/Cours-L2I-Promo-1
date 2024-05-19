import java.util.ArrayList;
import mypackets.*;

public class Exo3 {

	public static void main(String[] args) {
		
		NoteBis note = new NoteBis();

		note.Ajouter(12);
		note.Ajouter(14);
		note.Ajouter(9);

		System.out.println("La moyenne des notes est : " + note.moyenne());
		note.Ajouter(13);
		System.out.println("La moyenne des notes est : " + note.moyenne());

		System.out.println();
		note.affichage();

		System.out.println("\n\n");
	}
}