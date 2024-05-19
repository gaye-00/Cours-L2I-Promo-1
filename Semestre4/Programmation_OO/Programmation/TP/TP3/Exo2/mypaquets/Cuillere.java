package mypaquets;

public class Cuillere extends Ustensile {

	public Cuillere(int annee, double _longueur) {
		super(annee);
		this.longueur = _longueur;
	}

	public String toString() {
		return "C'est une Cuillere qui date de " + super.anne_fabrication + " de rayon : " + this.longueur;
	}

	private double longueur;
}