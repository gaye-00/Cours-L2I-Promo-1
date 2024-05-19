package gestionEtudiants;

public class Etudiant {

	public Etudiant(String prenom, String nom) {
		this._prenom = prenom;
		this._nom = nom;
	}

	public Etudiant(String prenom, String nom, int matricule) {
		this._prenom = prenom;
		this._nom = nom;
		this._matricule = matricule;
	}

	public String getPrenom() {
		return this._prenom;
	}

	public void setPrenom(String new_prenom) {
		this._prenom = new_prenom;
	}

	public String getnom() {
		return this._nom;
	}

	public void setnom(String new_nom) {
		this._nom = new_nom;
	}

	public int getMatricule() {
		return this._matricule;
	}

	public void setMatricule(int new_matricule) {
		this._matricule = new_matricule;
	}

	public String toString() {
		return (this._prenom + "  " + this._nom + "  " + this._matricule);
	}

	private String _prenom;
	private String _nom;
	private int _matricule;
}