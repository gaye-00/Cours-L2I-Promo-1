package mypaquets;

public class AssietteRonde extends Assiette {

	public AssietteRonde(int annee, double _cote) {
		super(annee);
		this.cote = _cote;
	}

	public double surface() {
		return this.cote * this.cote;
	}

	public String toString() {
		return "C'est une Assiette Ronde qui date de " + super.anne_fabrication + " de rayon : " + this.cote;
	}

	private double cote;
}