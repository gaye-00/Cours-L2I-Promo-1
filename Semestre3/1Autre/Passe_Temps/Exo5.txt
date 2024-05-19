#include <stdio.h>
#include <math.h>

int main()
{
  	int nbr, pre, der, l, carre, cmp=0, i;
 
  	printf("Entrer un nombre  : ");
  	scanf("%d", & nbr);

  	carre = nbr*nbr;
  	printf("Le caree de %d est %d\n",nbr, carre);

  	/* Cela retournera le nombre total de chiffres - 1*/
  	l = log10(carre)+1; 
  	pre = carre / pow(10, l/2);

  	while (pre != carre) {
  		cmp++;
  		carre /= 10;
  	}

  	for (i = 0; i < cmp; ++i)
  		carre *= 10;

  	der = nbr*nbr - carre;
	    
  	printf("\nLes premiers chiffres sont %d", pre);
  	printf("\nLes derniers chiffres sont %d \n", der);

  	if (pre + der == nbr)
  		printf("\nLe nombre %d est un nombre de Kaprekar\n",nbr);
  	else
  		printf("\nLe nombre %d n'est pas un nombre de Kaprekar\n",nbr);
 
  	return 0;
}