#include <stdio.h>
#include <stdlib.h>
void decoupe(int fduree, int *fminute, int *fheure);

int main(void)
{
	int duree=0, heure=0, minute=0;

	do {
	printf("Donner la duree en minute : ");	
	scanf("%d", &duree);	
	} while (duree < 0);

	decoupe(duree, &minute, &heure);
	printf("%dmn = %d heure et %d minutes\n",duree, heure, minute);

	return 0;
}

void decoupe(int fduree, int *fminute, int *fheure) {
	*fminute = fduree % 60;
	*fheure = fduree / 60;
}