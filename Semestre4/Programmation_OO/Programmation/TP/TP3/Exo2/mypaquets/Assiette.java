package mypaquets;

abstract public class Assiette extends Ustensile {

	public Assiette(int annee) {
		super(annee);
	}

	abstract public double surface();
}