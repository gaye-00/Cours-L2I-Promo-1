#include <stdio.h>
#include <stdlib.h>
/*-------------------------------------------------------------------*/
#define TAILLE_MAX 1000
/*-------------------------------------------------------------------*/
typedef enum {
	false,
	true
}Boole;
/*-------------------------------------------------------------------*/

int main(void) {

	int i;
	unsigned long nombre = 1000000001;
	// On a commencer par un milliard pour tester
	FILE *fichier = NULL;
	Boole ok;

	fichier = malloc(sizeof(long long) * TAILLE_MAX);

	fichier = fopen("note/nombre.txt", "w");

	while(1) {
		nombre += 2;
		//for(i = 2; i < nombre; i++)

		i = 2; ok = true;
		while((i < nombre) && (ok == true)) {
			if((nombre / i) == 0)
				ok = false;
			else
				i++;
		}

		if(ok)
			printf("%lu est premier\n", nombre);
		fwrite(&nombre, sizeof(long), 1, fichier);
	}

	fclose(fichier);
	free(fichier);

	return 0;
}