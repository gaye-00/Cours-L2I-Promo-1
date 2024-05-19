#include <stdio.h>
#include <stdlib.h>
/*---------------------------------------------------------------------------------*/
typedef struct Date Date;
struct Date {
	int jour;
	int mois;
	int annee;
};
typedef struct Etudiant Etudiant;
struct Etudiant {
	char nom[100];
	int age;
	float moyenne;
	Date date_naissance;
};
/*---------------------------------------------------------------------------------*/
void saisi_date(Date *d);
void saisi_un(Etudiant *e2);
void saisi(Etudiant tab[], int n);
/*---------------------------------------------------------------------------------*/
/*---------------------------------------------------------------------------------*/
int main(void)
{
	Etudiant tab[100];
	int nombre;

	do {
		printf("Donner le nombre d'etudiant : ");
		scanf("%d", &nombre);
	} while ((nombre < 0) || (nombre > 100));

	saisi(tab, nombre);

	return 0;
}
/*---------------------------------------------------------------------------------*/
/*---------------------------------------------------------------------------------*/
void saisi_date(Date *d) {
	do {
		printf("Entrer le jour de naissance : ");
		scanf("%d", &d->jour);
	} while((d->jour < 0) || (d->jour > 31));

	do {
		printf("Entrer le mois de naissance : ");
		scanf("%d", &d->mois);
	} while((d->mois < 0) || (d->mois > 12));

	do {
		printf("Entrer l'annee de naissance : ");
		scanf("%d", &d->annee);
	} while((d->annee < 0));
}
/*---------------------------------------------------------------------------------*/
void saisi_un(Etudiant *e2) {
	printf("Entrer le nom de l'etudiant : ");
	scanf("%s", e2->nom);
	//gets(e2->nom);

	do {
		printf("Entrer l'age de l'etudiant : ");
		scanf("%d", &e2->age);
	} while((e2->age < 0) || (e2->age > 100));

	do {
		printf("Entrer la moyenne de l'etudiant : ");
		scanf("%f", &e2->moyenne);
	} while((e2->moyenne < 0) || (e2->moyenne > 20));

	saisi_date(&e2->date_naissance);
	/*printf("Donner le jour : ");
	scanf("%d", &e2->date_naissance.jour);*/
}
/*---------------------------------------------------------------------------------*/
void saisi(Etudiant tab[], int n) {
	int i;
	for (i = 0; i < n; i++) {
		printf("\n---------------Etudant Numero : %d -----------------\n", i+1);
		saisi_un(&tab[i]);
	}
}
/*---------------------------------------------------------------------------------*/