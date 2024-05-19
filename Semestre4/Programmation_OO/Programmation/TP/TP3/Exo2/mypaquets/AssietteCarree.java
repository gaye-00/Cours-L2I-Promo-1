package mypaquets;

public class AssietteCarree extends Assiette {

	public AssietteCarree(int annee, double _rayon) {
		super(annee);
		this.rayon = _rayon;
	}

	public double surface() {
		return this.rayon * this.rayon * Math.PI;
	}

	public int valeur_objet() {
		return super.valeur_objet() * 4;
	}

	public String toString() {
		return "C'est une Assiette Carree qui date de " + super.anne_fabrication + " de rayon : " + this.rayon;
	}
	
	private double rayon;
}