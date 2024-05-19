package gestionEtudiants;
import java.util.ArrayList;

public class Classe {

	public Classe(String desc) {
		this.description = desc;
	}

	public int getAnnee() {
		return this.annee;
	}

	// Faux
	// public void setAnnee(int new_annee) {
	// 	this.annee = new_annee;
	// }

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String new_desc) {
		this.description = new_desc;
	}

	public int getNbEtudiant() {
		return this.nbrEetudiants;
	}

	public void setNbEtudiant(int new_nb) {
		this.nbrEetudiants = new_nb;
	}

	public void ajouterEutudiant(Etudiant etudiant) {
		// Etudiant st1 = new Etudiant("Mansour", "Diop", 9403922);
		groupEtudiant.add(etudiant);
		nbrEetudiants++;
	}

	public void afficherEtudiants() {
		for(Etudiant etu : groupEtudiant)
			System.out.println(etu);
			// System.out.println(etu.toString());
	}

	// -------------------------------------------------correciton------------------------------------------------
	// public ArrayList getArrayList() {
	// 	return ArrayList;
	// }

	// public void setArrayList(ArrayList<Etudiant> t) {
	// 	this.groupEtudiant = t;
	// 	nbrEetudiants = groupEtudiant.size();
	// }
	// -----------------------------------------------------------------------------------------------------------
	// Ne pas mettre de getter et setter pour les attributs publiques

	public static final int annee = 2022;
	private String description;
	private ArrayList<Etudiant> groupEtudiant = new ArrayList<Etudiant>();
	public static int nbrEetudiants = 0;
}