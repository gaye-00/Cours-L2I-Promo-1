package mypaquets;

public class Carre extends Rectangle {

	public Carre(int cote) {
		super(cote, cote);
	}

	// public int getCote() {
	// 	return super.getLongeur();
	// }

	public String toString() {
		return "Carre de cote: " + super.getLongeur();
	}
}