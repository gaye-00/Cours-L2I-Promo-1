package mypaquets;

public class PointColor extends Point{

	public PointColor(int x, int y, String _couleur) {
		super(x, y);
		this.couleur = _couleur;
	}

	public String getCouleur() {
		return this.couleur;
	}

	public boolean equals(Object o) {
		PointColor q = (PointColor)(o);

		return ((super.getX() == q.getX()) && (super.getY() == q.getY()) && (this.couleur == q.couleur));
	}

	public String toString() {
		return super.toString() + " de couleur " + this.couleur;
	}

	private String couleur;
}