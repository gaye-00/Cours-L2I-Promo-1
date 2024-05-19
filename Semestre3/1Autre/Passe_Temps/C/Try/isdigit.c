#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
/*-------------------------------------------*/

int main(void)
{
	char c;
	int zero;

	printf("Entrer un caractere : ");
	c = getchar();
	zero = isdigit(c);

	if (zero != 0)
		printf("C'est un chiffre\n");
	else
		printf("Ce n'est pas un chiffre\n");

	printf("\nConvertion en Majuscule %c\n",toupper(c));
	printf("\nConvertion en Minuscule %c\n",tolower(c));

	return 0;
}