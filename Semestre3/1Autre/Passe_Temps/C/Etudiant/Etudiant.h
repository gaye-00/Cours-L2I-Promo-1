#ifndef __Etudiant__
#define __Etudiant__
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
void saisiDate(Date *d);
void afficheEtudiant(Etudiant tab[], int nombre);

/*-------------------------------------------------------------------------------------------------------*/

#endif