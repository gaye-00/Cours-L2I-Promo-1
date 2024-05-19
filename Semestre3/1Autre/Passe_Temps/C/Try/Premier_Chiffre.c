#include <stdio.h>
#include <math.h>

int main()
{
  	int nbr, pre, der, l;
 
  	printf("\nEntrer un nombre  : ");
  	scanf("%d", & nbr);
  	
  	/* Cela retournera le nombre total de chiffres - 1*/
  	l = log10(nbr); 
  	pre = nbr / pow(10, l);
  	
  	der = nbr % 10;
	    
  	printf("\nLe premier chiffre est %d", pre);
  	printf("\nLe dernier chiffre est %d", der);
 
  	return 0;
}