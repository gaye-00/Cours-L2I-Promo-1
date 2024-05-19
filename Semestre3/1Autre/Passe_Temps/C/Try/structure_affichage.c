#include <stdio.h>
#include <string.h>
/*-------------------------------------------------------------------------------------------------------*/
#define NB_ETUDIANT 100
#define MIN_PRENOM 1
#define MAX_PRENOM 25
#define MIN_NOM 1
#define MAX_NOM 15
#define TAILLE_NCE 9
/*-------------------------------------------------------------------------------------------------------*/
typedef struct Date Date;
struct Date {
	int jour;
	int mois;
	int annee;
};
typedef struct Etudiant Etudiant;
struct Etudiant {
	char prenom[25];
	char nom[15];
	char NCE[10];
	float moyenne;
	Date dateNaissance;
};
/*-------------------------------------------------------------------------------------------------------*/
void saisieEtudiant(Etudiant tab[], int nombre);
void saisie_Un(Etudiant *personne);
void saisiDate(Date *d);
void affiche_Un(Etudiant *personne);
void afficheEtudiant(Etudiant tab[], int nombre);
/*-------------------------------------------------------------------------------------------------------*/

int main(void) {

	Etudiant tablau_Etudiants[NB_ETUDIANT];
	int nombre;

	do {
		printf("Donner le nombre d'etudiant : ");
		scanf("%d", &nombre);
	} while((nombre < 0) || (nombre > NB_ETUDIANT));

	saisieEtudiant(tablau_Etudiants, nombre);
	afficheEtudiant(tablau_Etudiants, nombre);

	return 0;
}
/*-------------------------------------------------------------------------------------------------------*/
void saisiDate(Date *d) {
	do {
		printf("\nEntrer le jour de naissance de l'etudiant : ");
		scanf("%d", &d->jour);
	} while((d->jour <= 0) || (d->jour > 31));

	do {
		printf("Entrer le mois de naissance de l'etudiant : ");
		scanf("%d", &d->mois);
	} while((d->mois <= 0) || (d->mois > 12));

	do {
		printf("Entrer l'annee de naissance de l'etudiant : ");
		scanf("%d", &d->annee);
	} while((d->annee <= 0));
	printf("\n\n");
}
/*-------------------------------------------------------------------------------------------------------*/
void saisie_Un(Etudiant *personne) {
	do {
		printf("Entrer le prenom de l'etudiant : ");
		//gets(personne->prenom);
		scanf("%s", personne->prenom);
	} while((strlen(personne->prenom) < MIN_PRENOM) || (strlen(personne->prenom) > MAX_PRENOM));

	do {
		printf("Entrer le nom de l'etudiant : ");
		//gets(personne->nom);
		scanf("%s", personne->nom);
	} while((strlen(personne->nom) < MIN_NOM) || (strlen(personne->nom) > MAX_NOM));

	do {
		printf("Donner le Numero de la carte de l'etudiant : ");
		//gets(personne->NCE);
		scanf("%s", personne->NCE);
	} while(strlen(personne->NCE) != TAILLE_NCE);

	do {
		printf("Entrer la moyenne de l'etudiant : ");
		scanf("%f", &personne->moyenne);
	} while((personne->moyenne < 0) || (personne->moyenne > 20));

	saisiDate(&personne->dateNaissance);
}
/*-------------------------------------------------------------------------------------------------------*/
void saisieEtudiant(Etudiant tab[], int nombre) {
	int i;

	for(i = 0; i < nombre; i++)
		saisie_Un(&tab[i]);
}
/*-------------------------------------------------------------------------------------------------------*/
void affiche_Un(Etudiant *personne) {
	printf("  -%s %s\n", personne->prenom, personne->nom);
	printf("NCE : %s\n", personne->NCE);
	printf("Moyenne : %.2f\n", personne->moyenne);
	printf("Nee le : %d/%d/%d\n\n", personne->dateNaissance.jour, personne->dateNaissance.mois, personne->dateNaissance.annee);
}
/*-------------------------------------------------------------------------------------------------------*/
void afficheEtudiant(Etudiant tab[], int nombre) {
	int i;

	printf("\n\n------------------Affichage des informations des Etudiants----------------------------\n");
	for(i = 0; i < nombre; i++)
		affiche_Un(&tab[i]);
}
/*-------------------------------------------------------------------------------------------------------*/