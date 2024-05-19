#include <stdio.h>
#include <stdlib.h>
/*---------------------------------------------------------------------------------------------------------------*/
typedef struct Etudiant Etudiant;
struct Etudiant {
	char prenom[50];
	char nom[25];
	int age;
	char classe[50];
};
/*---------------------------------------------------------------------------------------------------------------*/
void saisi_un(Etudiant *personne);
void saisi(Etudiant tab[], int n);
void affiche_un(Etudiant *personne);
void affiche(Etudiant tab[], int n);
/*---------------------------------------------------------------------------------------------------------------*/

int main(void) {

	Etudiant *tableau_Etudiant = NULL;
	int taille = 0;

	do {
		printf("Donner le nombre de l'etudiant : ");
		scanf("%d", &taille);
		printf("\n");
	} while(taille <= 0);

	tableau_Etudiant = calloc(taille, sizeof(Etudiant) * taille);

	if(tableau_Etudiant == NULL)
		exit(1);

	saisi(tableau_Etudiant, taille);
	affiche(tableau_Etudiant, taille);

	free(tableau_Etudiant);

	return 0;
}
/*---------------------------------------------------------------------------------------------------------------*/
void saisi_un(Etudiant *personne) {
	printf("Donner le prenom de l'etudiant : ");
	scanf("%s", personne->prenom);
	//gets(personne->prenom);

	printf("Donner le nom de l'etudiant : ");
	scanf("%s", personne->nom);
	//gets(personne->nom);

	printf("Donner l'age de l'etudiant : ");
	scanf("%d", &personne->age);

	printf("Donner la classe de l'etudiant : ");
	scanf("%s", personne->classe);
	//gets(personne->classe);

	printf("\n\n");
}
/*---------------------------------------------------------------------------------------------------------------*/
void saisi(Etudiant tab[], int n) {
	int i; 

	for(i = 0; i < n; i++)
		saisi_un(&tab[i]);
}
/*---------------------------------------------------------------------------------------------------------------*/
void affiche_un(Etudiant *personne) {
	printf("\n\n%s %s \nAge : %d\nClasse : %s", personne->prenom, personne->nom, personne->age, personne->classe);
}
/*---------------------------------------------------------------------------------------------------------------*/
void affiche(Etudiant tab[], int n) {
	int  i;

	for(i = 0; i < n; i++)
		affiche_un(&tab[i]);
}
/*---------------------------------------------------------------------------------------------------------------*/