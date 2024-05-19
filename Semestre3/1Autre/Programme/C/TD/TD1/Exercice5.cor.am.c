#include <stdio.h>
int annee_bissextile(int);
int nombre_jours(int, int);
int date_valide(int, int, int);

int main(void) {

	int annee;
	do {
		printf("Donner l'annee : ");
		scanf("%d", &annee);
	} while(annee < 0);

	if(annee_bissextile(annee) == 1)
		printf("%d est une annee bissextile\n", annee);
	else
		printf("%d n'est pas une annee bissextile\n", annee);

	printf("\n");

	int mois;

	do {
		printf("Donner le mois : ");
		scanf("%d", &mois);
	} while((mois < 1) || (mois > 12));

	printf("Le nombre de jours de cette mois est : %d\n", nombre_jours(mois, annee));

	printf("\n");

	int jour;

	do {
		printf("Donner le jour : ");
		scanf("%d", &jour);
	} while((jour < 1) || (jour > 31));

	printf("\n");

	if(date_valide(jour, mois, annee) == 1)
		printf("La date entree est valide...\n");
	else
		printf("La date entree est non valide...\n");

	return 0;
}

/*-----------------------------------------------------------------------------------------------------------*/

int annee_bissextile(int n) {

	if(((n % 100) != 0) && ((n % 4) == 0))
		return 1;
	else if(((n % 100) == 0) && ((n / 100) % 4 ) == 0)
		return 1;
	else
		return 0;
}

/*-----------------------------------------------------------------------------------------------------------*/
int nombre_jours(int f_mois, int f_annee) {

	if((f_mois == 1) || (f_mois == 3) || (f_mois == 5) || (f_mois == 7) || (f_mois == 8) || (f_mois == 10) || (f_mois == 12))
		return 31;
	else if((f_mois == 4) || (f_mois == 6) || (f_mois == 9) || (f_mois == 11))
		return 30;
	else if(annee_bissextile(f_annee) == 1)
		return 29;
	else
		return 28;
}

/*-----------------------------------------------------------------------------------------------------------*/

int date_valide(int f_jour, int f_mois, int f_annee) {

	// On peut simplifier ce machin en utilisant la fonction nombre_jours
	if((f_mois == 2) && (annee_bissextile(f_annee) == 0) && (f_jour > 28))
		return 0;
	else if((f_mois == 2) && (annee_bissextile(f_annee) == 1) && (f_jour > 29))
		return 0;
	else if(((f_mois == 4) || (f_mois == 6) || (f_mois == 9) || (f_mois == 11)) && (f_jour > 30))
		return 0;
	else
		return 1;
}
