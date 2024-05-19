package mypaquets;

public class Rectangle {

	public Rectangle(int longeur, int largeur) {
		this._longeur = longeur;
		this._largeur = largeur;
	}

	public int surface() {
		return (this._longeur * this._largeur);
	}

	public String toString() {
		return "Rectangle: longeur = " + this._longeur + ", largeur = " + this._largeur;
	}

	public int getLongeur() {
		return this._longeur;
	}

	public int getLargeur() {
		return this._largeur;
	}

	private int _longeur;
	private int _largeur;
}