#include <stdio.h>
#include <stdlib.h>


int main(void) {

	int heure, jour;

	do {
		printf("Donner le jour de la semaine : ");
		scanf("%d", &jour);
	} while((jour >= 7) || (jour < 0));

	printf("\n");

	do {
		printf("Donner l'heure de la jour : ");
		scanf("%d", &heure);
	} while((heure < 0) || (heure > 23));


	/*if(((heure > 7) && (heure < 13)) || (heure > 20)) {
		if((jour == 1) || ((jour == 0) && (heure > 13)))
			printf("La boulangerie n'est pas ouverte\n");
	}
	else
		printf("La boulangerie est pas ouverte\n");*/

	/*if(((((heure >= 7) && (heure <= 13)) || ((heure >= 16) && (heure <= 20))) && (jour > 1)) || (((heure >= 7) && (heure <= 13)) && ((jour == 0))))
			printf("La boulangerie est pas ouverte\n");

	else
		printf("La boulangerie n'est pas ouverte\n");*/

	if((jour > 1) || ((jour == 0) && (heure <= 12))) {
		if(((heure >= 7) && (heure <= 13)) || ((heure >= 16) && (heure <= 20)))
			printf("La boulangerie est ouverte\n");
	}
	else
		printf("La boulangerie est fermee\n");
			


	return 0;
}