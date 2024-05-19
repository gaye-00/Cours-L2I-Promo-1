#include <stdio.h>
#include <stdlib.h>

typedef enum {
	false, //0
	true //1
}Bool;

typedef struct ListElement {
	int value;
	struct ListElement *next;
}ListElement, *List;

// Les prototypes 
List new_list(void);
Bool is_empty_list(List li);
int list_length(List li);
void print_list(List li);
List insert_back_list(List li, int x);
List insert_front_list(List li, int x);
List delete_back_list(List li);
List delete_front_list(List li);
List clear_list(List li);
List erase_list(List li);

///////////////////////////////////////////////////////////////////////

int main(void) {

	List mylist = new_list();

	printf("La longeur de liste est %d\n", list_length(mylist));
	print_list(mylist);
	mylist = insert_back_list(mylist, 25);
	mylist = insert_back_list(mylist, 4);
	mylist = insert_back_list(mylist, 3);
	mylist = insert_front_list(mylist, 78);
	mylist = insert_front_list(mylist, 23);
	print_list(mylist);
	printf("La longeur de liste est %d\n", list_length(mylist));

	mylist = erase_list(mylist);
	print_list(mylist);
	printf("La longeur de liste est %d\n", list_length(mylist));

	mylist = clear_list(mylist);
	printf("La longeur de liste est %d\n", list_length(mylist));

	return 0;
}

///////////////////////////////////////////////////////////////////////

/*--------------------------------------------------------------------*/

List new_list(void) {
	return NULL;
}

/*--------------------------------------------------------------------*/

Bool is_empty_list(List li) {
	if(li == NULL)
		return true;

	return false;
}

/*--------------------------------------------------------------------*/

int list_length(List li) {
	int size = 0;

	if(!is_empty_list(li))
		while(li != NULL) {
			size++;
			li = li->next;
		}

	return size;
}

/*------------------------------------------------------------------*/

void print_list(List li) {
	if(is_empty_list(li)) {
		printf("Rien a afficher la Liste est vide\n");
		return;
	}

	while(li != NULL) {
		printf("[%d]  ", li->value);
		li = li->next;
	}
	printf("\n");
}

/*------------------------------------------------------------------*/

List insert_back_list(List li, int x) {
	ListElement *element;

	element = malloc(sizeof(*element));

	if(element == NULL) {
		fprintf(stderr, "Erreur : Probleme d'allocation dynamique\n");
		exit(EXIT_FAILURE);
	}

	element->value = x;
	element->next = NULL;

	if(is_empty_list(li))
		return element;

	ListElement *tmp = li;

	while(tmp->next != NULL)
		tmp = tmp->next;

	tmp->next = element;

	return li;
}

/*------------------------------------------------------------------*/

List insert_front_list(List li, int x) {
	ListElement *element;

	element = malloc(sizeof(*element));

	if(element == NULL) {
		fprintf(stderr, "Erreur : Probleme d'allocation dynamique\n");
		exit(EXIT_FAILURE);
	}

	element->value = x;

	if(is_empty_list(li))
		element->next = NULL;
	else
		element->next = li;

	return element;
}

/*------------------------------------------------------------------*/

List delete_back_list(List li) {
	if(is_empty_list(li))
		return new_list();

	if(li->next == NULL) {
		free(li);
		li = NULL;

		return new_list();
	}

	ListElement *tmp = li;
	ListElement *before = li;

	while(tmp->next != NULL) {
		before = tmp;
		tmp = tmp->next;
	}

	before->next = NULL;
	free(tmp);
	tmp = NULL;

	return li;
}

/*------------------------------------------------------------------*/

List delete_front_list(List li) {
	if(is_empty_list(li))
		return new_list();

	ListElement *element;

	element = malloc(sizeof(*element));

	if(element == NULL) {
		fprintf(stderr, "Erreur : Probleme d'allocation dynamique\n");
		exit(EXIT_FAILURE);
	}

	element = li->next;

	free(li);
	li = NULL;

	return element;
}

/*------------------------------------------------------------------*/

List clear_list(List li) {
	if(is_empty_list(li))
		return new_list();

	while(li != NULL)
		li = delete_front_list(li);

	return new_list();
}

/*------------------------------------------------------------------*/

List erase_list(List li) {

	if(is_empty_list(li))
		return new_list();

	ListElement *tmp = li;
	ListElement *before = li;
	ListElement *after = li;

	while(tmp->value != 4) {
		before = tmp;
		tmp = tmp->next;
	}

	after = tmp->next;

	free(tmp);
	tmp = NULL;

	before->next = after;

	return li;
} 