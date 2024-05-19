#include <stdio.h>
#include <stdlib.h>

typedef enum {
	false, //0
	true //1
}Bool;

typedef struct Dlist {
	int value;
	struct Dlist *back;
	struct Dlist *next;
}*Dlist;

Dlist new_list(void);
Bool is_empty_list(Dlist li);
Dlist AjoutDebut(Dlist li, int x);
Dlist AjoutQueue(Dlist li, int x);
Dlist suppressionDebut(Dlist li);
Dlist SuppressionQueue(Dlist li);
Dlist AjoutApres(Dlist li, int x, int y);

void print_list(Dlist li);
void print_list_back(Dlist li);

Dlist pop_Dlist(Dlist li);
Dlist clear_list(Dlist li);


int main(void) {

	Dlist mylist = new_list();

	int nombre, i, y;

	printf("Donner le nombre d'elements de Dliste : ");
	scanf("%d", &nombre);

	for(i = 0; i<nombre; i++) {
		printf("Donner la valeur : ");
		scanf("%d", &y);

		mylist = AjoutDebut(mylist, y);
	}

	print_list(mylist);
	print_list_back(mylist);

	printf("\n");
	int x;

	printf("Donner la valeur de l'element : ");
	scanf("%d", &x);

	printf("Donner la valeur apres ajout element : ");
	scanf("%d", &y);

	mylist = AjoutApres(mylist, x, y);

	printf("\n");
	print_list(mylist);
	print_list_back(mylist);

	mylist = clear_list(mylist);

	print_list(mylist);

	return 0;
}

/*--------------------------------------------------------------------------------------------------*/

Dlist new_list(void) {

	return NULL;
}

/*--------------------------------------------------------------------------------------------------*/

Bool is_empty_list(Dlist li) {
	if(li == NULL)
		return true;

	return false;
}

/*--------------------------------------------------------------------------------------------------*/

Dlist AjoutDebut(Dlist li, int x) {

	Dlist element;

	element = malloc(sizeof(*element));
	element->value = x;
	element->back = NULL;

	if(is_empty_list(li)) {
		element->next = NULL;
		return element;
	}

	element->next = li;
	li->back = element;

	return element;
}

/*--------------------------------------------------------------------------------------------------*/

Dlist AjoutQueue(Dlist li, int x) {

	Dlist element;

	element = malloc(sizeof(*element));
	element->value = x;
	element->next = NULL;

	if(is_empty_list(li)) {
		element->back = NULL;
		return element;
	}

	Dlist temp = li;

	while(!is_empty_list(temp->next))
		temp = temp->next;

	temp->next = element;
	element->back = temp;

	return li;
}

/*--------------------------------------------------------------------------------------------------*/

void print_list(Dlist li) {

	if(is_empty_list(li)) {
		printf("Rien a afficher la Dliste est vide !\n");
		return;
	}

	while(!is_empty_list(li)) {
		printf("[%d]  ", li->value);
		li = li->next;
	}

	printf("\n");
}

/*--------------------------------------------------------------------------------------------------*/

void print_list_back(Dlist li) {

	if(is_empty_list(li)) {
		printf("Rien a afficher la Dliste est vide !\n");
		return;
	}

	Dlist element = li;

	while(!is_empty_list(element->next))
		element = element->next;

	while(!is_empty_list(element)) {
		printf("[%d]  ", element->value);
		element = element->back;
	}

	printf("\n");
}

/*--------------------------------------------------------------------------------------------------*/

Dlist suppressionDebut(Dlist li) {

	if(is_empty_list(li))
		return new_list();

	Dlist element = li;

	li = li->next;
	li->back = NULL; //#
	free(element);

	return li;
}

/*--------------------------------------------------------------------------------------------------*/

Dlist SuppressionQueue(Dlist li) {

	if(is_empty_list(li))
		return new_list();

	if(li->next == NULL) {
		free(li);
		return new_list();
	}

	Dlist temp = li;
	Dlist before;

	while(!is_empty_list(temp->next)) {
		before = temp;
		temp = temp->next;
	}

	before->next = NULL;
	free(temp);

	return li;
}

/*--------------------------------------------------------------------------------------------------*/

Dlist AjoutApres(Dlist li, int x, int y) {

	Dlist element;

	element = malloc(sizeof(*element));
	element->value = x;

	if(is_empty_list(li)) {
		element->next = element->back = NULL;
		return element;
	}

	Dlist pc = li;

	while(pc != NULL && pc->value != y)
		pc = pc->next;

	if(!is_empty_list(pc)) {
		element->next = pc->next;
		element->back = pc;

		if(pc->next != NULL) //#
			pc->next->back = element;

		pc->next = element;
	}

	return li;
}

/*--------------------------------------------------------------------------------------------------*/

Dlist pop_Dlist(Dlist li) {

	if(is_empty_list(li))
		return new_list();

	if(li->next == NULL) {
		free(li);
		return new_list();
	}

	Dlist element;
	element = malloc(sizeof(*element));
	element = li;

	element = element->next;

	free(li);

	return element;
}

/*--------------------------------------------------------------------------------------------------*/

Dlist clear_list(Dlist li) {

	if(is_empty_list(li))
		return new_list();

	while(!is_empty_list(li))
		li = pop_Dlist(li);

	return new_list();
}

/*--------------------------------------------------------------------------------------------------*/