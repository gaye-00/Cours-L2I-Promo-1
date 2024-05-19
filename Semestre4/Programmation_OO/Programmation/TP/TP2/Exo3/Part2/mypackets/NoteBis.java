package mypackets;
import java.util.ArrayList;

public class NoteBis {

	public void Ajouter(double note) {
		BloqueNote.add(note);
	}

	public void affichage() {
		for(double note : BloqueNote)
			System.out.print(note + "\t");
	}

	public double moyenne() {
		double somme = 0;
		for(double note : BloqueNote)
			somme += note;

		return somme/this.BloqueNote.size();
	}

	ArrayList<Double> BloqueNote = new ArrayList<Double>();
}