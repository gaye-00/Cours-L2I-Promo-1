#include <stdio.h>
#include <stdlib.h>
/*-------------------------------------------*/

int main(void)
{
	char chaine[100];
	char c;

	printf("Entrer une chaine : ");
	gets(chaine);
	puts(chaine);

	printf("\nEntrer un caractere : ");
	c = getchar();
	putchar(c);

	return 0;
}