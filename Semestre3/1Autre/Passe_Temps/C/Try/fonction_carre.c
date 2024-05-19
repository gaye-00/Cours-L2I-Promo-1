#include <stdio.h>
#include <stdlib.h>
int carre(int);

int main(void)
{
	int nombre;

	printf("Entrer un nombre : ");
	scanf("%d", &nombre);

	printf("Le carre de %d est : %d\n", nombre, carre(nombre));
	return 0;
}

int carre(int nb) {
	return nb*nb;
}