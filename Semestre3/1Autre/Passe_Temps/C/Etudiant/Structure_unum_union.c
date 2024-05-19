#include <stdio.h>
#include <string.h>
#include "Etudiant.h"
/*--------------------------------------------------------------------------*/
#define NB_ETUDIANT 100
/*--------------------------------------------------------------------------*/

int main(void) {

	Etudiant tablau_Etudiants[NB_ETUDIANT];
	int nombre;

	do {
		printf("Donner le nombre d'etudiant : ");
		scanf("%d", &nombre);
	} while((nombre <= 0) || (nombre > NB_ETUDIANT));

	saisieEtudiant(tablau_Etudiants, nombre);
	afficheEtudiant(tablau_Etudiants, nombre);

	return 0;
}