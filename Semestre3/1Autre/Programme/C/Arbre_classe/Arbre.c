#include <stdio.h>
#include <stdlib.h>

typedef enum {
	false, //0
	true // 1
}Bool;

typedef struct TreeElement {
	int value;
	struct TreeElement *sad;
	struct TreeElement *sag;
}TreeElement, *Tree;


Tree new_tree(int);
Bool is_empty_tree(Tree tr);
Tree add_tree(Tree a, int x);


int main(void) {

	Tree mytree = new_tree(5);

	free(mytree);

	return 0;
}


/*---------------------------------------------------------------------------------------------------*/

Tree new_tree(int x) {

	TreeElement *element;

	element = malloc(sizeof(*element));

	if(element == NULL) {
		fprintf(stderr, "Probleme d'allocation dynamique de la memoire\n");
		exit(EXIT_FAILURE);
	}

	element->value = x;
	element->sad = NULL;
	element->sag = NULL;

	printf("Creation de %d \n", element->value);

	return element;	
}

/*---------------------------------------------------------------------------------------------------*/

Bool is_empty_tree(Tree tr) {

	if(tr == NULL)
		return true;

	return false;
}

/*---------------------------------------------------------------------------------------------------*/

Tree add_tree(Tree tr, int x) {

	element = new_tree(x);

	if(is_empty_tree(tr))
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
}

/*---------------------------------------------------------------------------------------------------*/

Tree add_element(Tree tr, int x) {

}