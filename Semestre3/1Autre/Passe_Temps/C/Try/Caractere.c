#include <stdio.h>
#include <stdlib.h>
/*-------------------------------------------*/

int main(void)
{
	char c=' ';

	printf("Entrer un caractere quelconque : ");
	c = getchar();

	if((c >= '0') && (c <= '9')) printf("Chiffre\n");
	if((c >= 'A') && (c <= 'Z')) printf("Majuscule\n");
	if((c >= 'a') && (c <= 'z')) printf("Minuscule\n");

	printf("\nConvertion de Majuscule en Minuscule et vice-versa\n");
	if((c >= 'A') && (c <= 'Z')) c = c - 'A' + 'a';
	if((c >= 'a') && (c <= 'z')) c = c - 'a' + 'A';
	putchar(c);

	return 0;
}