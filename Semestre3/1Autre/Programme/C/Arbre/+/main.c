#include "Tree.h"

int main(void)
{
	
	Tree arbre = NULL; //new_tree(5);
	int nombre, val, i;

	do {
		printf("Donner le nombre d'elements : ");
		scanf("%d", &nombre);
	} while(nombre < 0);

	for(i = 0; i < nombre; i++) {
		printf("%d-Donner la valeur : ", i+1);
		scanf("%d", &val);

		arbre = add_tree(arbre, val);
	}

	print_tree(arbre);

	printf("\n");
	clear_tree(arbre);

	return 0;
}