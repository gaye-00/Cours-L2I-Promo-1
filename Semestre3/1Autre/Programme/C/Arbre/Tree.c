#include "Tree.h"

Tree *new_tree(int x) {

	Tree *tr = malloc(sizeof(*tr));

	if(tr == NULL) {
		fprintf(stderr, "Probleme d'allocation dynamique de la memoire\n");
		exit(EXIT_FAILURE);
	}

	tr->value = x;
	tr->tleft = NULL;
	tr->tright = NULL;
	tr->parent = NULL;

	printf("Creation de %d\n", tr->value);

	return tr;
}