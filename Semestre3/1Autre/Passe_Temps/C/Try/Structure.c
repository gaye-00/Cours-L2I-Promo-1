#include <stdio.h>
#include <stdlib.h>
/*---------------------------------------------------------------------------------*/
typedef struct Etudiant Etudiant;
struct Etudiant {
	char nom[100];
	int age;
	float moyenne;
};
/*---------------------------------------------------------------------------------*/
void saissir(Etudiant *e2);
void affiche(Etudiant *e3);
/*---------------------------------------------------------------------------------*/
int main(void)
{
	Etudiant e1;

	saissir(&e1);
	affiche(&e1);
	
	return 0;
}
/*---------------------------------------------------------------------------------*/
void saissir(Etudiant *e2) {
	printf("Donner le nom de l'etudiant : ");
	gets(e2->nom);

	do {
		printf("Donner l'age de l'etudiant : ");
		scanf("%d", &e2->age);
	} while ((e2->age <= 0) || (e2->age > 1000));

	do {
		printf("Donner la moyenne de l'etudiant : ");
		scanf("%f", &e2->moyenne);
	} while ((e2->moyenne < 0) || (e2->moyenne > 20));
	
	
}
/*---------------------------------------------------------------------------------*/
void affiche(Etudiant *e3) {
	printf("\nNom : %s	Age : %d   Moyenne : %.2f\n",e3->nom, e3->age, e3->moyenne);
}
/*---------------------------------------------------------------------------------*/
