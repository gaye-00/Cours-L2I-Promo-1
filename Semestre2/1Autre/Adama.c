#include <stdio.h>

 int main(void)
{
	int tab[3], i;

	for ( i = 0; i < 3; i++)
	{
		printf("Entre la note numero %d : ",i+1);
		scanf("%d", &tab[i]);
	}
	return 0;
}