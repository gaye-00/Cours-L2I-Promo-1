package mypaquets;
import java.time.Year;

abstract public class Ustensile {

	public Ustensile(int annee) {
		this.anne_fabrication = annee;
	}

	public int valeur_objet() {
		Year annee = Year.now();
		int nombre_annee = annee.getValue() - anne_fabrication;
		// System.out.println("L'annee est : " + annee.getValue());
		// System.out.println("L'annee est : " + annee);

		if(nombre_annee <= 50)
			return 0;
		else
			return (int)(nombre_annee * 1000);
	}

	protected int anne_fabrication;
}