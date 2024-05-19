#include "Tree.h"

Tree new_tree(int x) {

	Tree tr = malloc(sizeof(*tr));

	if(tr == NULL) {
		fprintf(stderr, "Probleme d'allocation dynamique de la memoire\n");
		exit(EXIT_FAILURE);
	}

	tr->value = x;
	tr->sag = NULL;
	tr->sad = NULL;

	printf("Creation de %d\n", tr->value);

	return tr;
}

/*-------------------------------------------------------------------------*/

Tree add_tree(Tree tr, int x) {

	Tree element = new_tree(x);

	if(tr == NULL)
		return element;

	Tree tmp = tr;

	while(tmp->sag != NULL && tmp->sad != NULL) {
		if(tmp->sag != NULL && x < tmp->value)
			tmp = tmp->sag;
		else if(tmp->sad != NULL && x > tmp->value)
			tmp = tmp->sad;
	}

	if(x < tmp->value)
		tmp->sag = element;
	else
		tmp->sad = element;

	return tr;
}

/*-------------------------------------------------------------------------*/

void clear_tree(Tree tr) {

	if(tr == NULL)
		return;

	clear_tree(tr->sag);
	clear_tree(tr->sad);

	printf("Suppression de %d \n", tr->value);
	free(tr);
}

/*-------------------------------------------------------------------------*/

void print_tree(Tree tr) {

	if(tr == NULL)
		return;

	printf("%d\n", tr->value);

	if(tr->sag != NULL)
		print_tree(tr->sag);

	if(tr->sad != NULL)
		print_tree(tr->sad);
}