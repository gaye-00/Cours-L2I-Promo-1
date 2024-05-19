#include <stdio.h>
#include <stdlib.h>
/*------------------------------------------------------------------*/
#define TEST 1515

int main(void)
{
	float nombre = 124.35;
	float entier = (int)nombre;
	const float PI = 3.1415;

	printf("La valeur de entier est %f\n", entier);
	printf("La constante PI est : %.4f\n", PI);
	printf("La valeur de TEST est %d\n", TEST);

	return 0;
}