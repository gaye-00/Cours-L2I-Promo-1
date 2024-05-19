#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <windows.h>
/*---------------------------------------------------------------------------------------------------------------------*/
typedef struct Etudiant Etudiant;
struct Etudiant {
	unsigned char prenom[50];
	unsigned char nom[25];
	unsigned char classe[50];
	int moyenne;

};
/*---------------------------------------------------------------------------------------------------------------------*/
void saisi_un(Etudiant *personne);
void affiche_un(Etudiant *personne);
/*---------------------------------------------------------------------------------------------------------------------*/

int main(void)
{
	FILE *fichier = NULL;
	Etudiant personne;
	int nombre, i, logue;
	char str[] = "\t\t\t\t   ----------------------------------------\n\t\t\t\t  | PROMO 20-21,Annee academique:2022-2023 |\n\t\t\t\t   ----------------------------------------\n\n\t\t\t\t ---------------------------------------------\n\t\t\t\t|   Licence 2 en Ingenieurie Informatique     |\n\t\t\t\t|         ----------***----------             |\n\t\t\t\t|            Prof. Khadim Drame               |\n\t\t\t\t ---------------------------------------------\n\n";
	logue = strlen(str);
	
	for(i = 0; i < logue; i++) {
		putchar(str[i]);
		Sleep(1);
	}

	system("pause"); system("cls");

	do {
		printf("Donner le nombre d'etudiant : ");
		scanf("%d", &nombre);
	} while(nombre <= 0);
	
	fichier = malloc(sizeof(Etudiant) * nombre);

	if(fichier == NULL)
		exit(1);

	fichier = fopen("etudiant.dat", "w+");

	if(fichier == NULL)
		exit(1);

	for (i = 0; i < nombre; i++) {
		saisi_un(&personne);
		fwrite(&personne, sizeof(Etudiant), 1, fichier);
	}

	fclose(fichier);

	free(fichier);

	fichier = fopen("etudiant.dat", "r");

	if(fichier == NULL) {
		printf("Echec de l'ouverture du fichier etudiant.dat\n");
		exit(1);
	}

	//while(fread(&personne, sizeof(Etudiant), 1, fichier) != EOF) {
	//while(feof(fichier) != 1) {
	for(i = 0; i < nombre; i++) {
		fread(&personne, sizeof(Etudiant), 1, fichier);
		affiche_un(&personne);
	}

	fclose(fichier);

	return 0;
}

/*---------------------------------------------------------------------------------------------------------------------*/
void saisi_un(Etudiant *personne) {
	printf("\nDonner le prenom de l'etudiant : ");
	scanf("%s", personne->prenom);

	printf("Donner le nom de l'etudiant : ");
	scanf("%s", personne->nom);

	printf("Donner la classe de l'etudiant : ");
	scanf("%s", personne->classe);

    do {
    	printf("Donner la moyenne de l'etudiant : ");
		scanf("%d", &personne->moyenne);
    } while((personne->moyenne < 0) || (personne->moyenne > 20));
	
}
/*---------------------------------------------------------------------------------------------------------------------*/
void affiche_un(Etudiant *personne) {
	printf("\n%s %s\n", personne->prenom, personne->nom);
	printf("Classe : %s\n", personne->classe);
	printf("Moyenne : %d/20\n", personne->moyenne);
}
/*---------------------------------------------------------------------------------------------------------------------*/