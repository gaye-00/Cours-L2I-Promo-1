#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <time.h>

typedef struct ListElement {
	int value;
	struct ListElement *next;
}ListElement, *List;

bool is_empty_list(List li);
List new_list(void);
List pop_front_list(List li);
List clear_list(List li);
void show_list(List li);
int alea_number(void);
List push_front_list(List li, int);
List create_list_alea(List li, int);
List sort_list(List li);
List push_front_element(List li, List element);

/*--------------------------------------------------------------------------------------------------------*/
int main(void) {

	List mylist = NULL;

	mylist = create_list_alea(mylist, 6);
	show_list(mylist);



	mylist = sort_list(mylist);
	printf("Affichage des elements after suppression\n");
	show_list(mylist);

	mylist = clear_list(mylist);

	return 0;
}


/*--------------------------------------------------------------------------------------------------------*/

bool is_empty_list(List li) {

	if(li == NULL)
		return true;

	return false;
}

/*--------------------------------------------------------------------------------------------------------*/

List new_list(void) {

	return NULL;
}

/*--------------------------------------------------------------------------------------------------------*/

void show_list(List li) {

	if(is_empty_list(li)) {
		printf("Rien a afficher la liste est vide !\n");
		return;
	}

	while(!is_empty_list(li)) {
		printf("%d  ", li->value);
		li = li->next;
	}

	printf("\n\n");
	return;
}

/*--------------------------------------------------------------------------------------------------------*/

List create_list_alea(List li, int n) {

	ListElement *element;
	int i;

	element = malloc(sizeof(*element));

	if(element == NULL) {
		fprintf(stderr, "Probleme d'allocation dynamique de la memoire\n");
		exit(EXIT_FAILURE);
	}

	// Very importante(rand() % 100);
	element = li;

	srand(time(NULL));
	for(i = 0; i < n; i++) {
		element = push_front_list(element, alea_number());
	}

	return element;
}

/*--------------------------------------------------------------------------------------------------------*/

int alea_number(void) {

	return (rand() % 100);
}

/*--------------------------------------------------------------------------------------------------------*/

List push_front_list(List li, int x) {

	ListElement *element;
	element = malloc(sizeof(*element));

	if(element == NULL) {
		fprintf(stderr, "Probleme d'allocation dynamique de la memoire\n");
		exit(EXIT_FAILURE);
	}

	element->value = x;
	element->next = li;

	return element;

}
/*--------------------------------------------------------------------------------------------------------*/

List pop_front_list(List li) {

	ListElement *element;

	element = malloc(sizeof(*element));

	if(element == NULL) {
		fprintf(stderr, "Probleme d'allocation dynamique de la memoire\n");
		exit(EXIT_FAILURE);
	}

	element = li->next;

	free(li);
	li = NULL;

	return element;
}

/*--------------------------------------------------------------------------------------------------------*/

List clear_list(List li) {

	if(is_empty_list(li))
		return new_list();

	while(!is_empty_list(li))
		li = pop_front_list(li);

	return new_list();
}

/*--------------------------------------------------------------------------------------------------------*/

List sort_list(List li) {

	ListElement *min_element;
	ListElement *actu_element = li;
	ListElement *tmp;

	tmp = malloc(sizeof(*tmp));

	if(tmp == NULL)
		exit(1);

	tmp = NULL;

	while(!is_empty_list(actu_element)) {
		min_element = actu_element;
		//printf("je suis la\n");
		while(min_element->next->next != NULL) {
			if(min_element->value > min_element->next->value)
				min_element = min_element->next;

			min_element = min_element->next;
		}
		//printf("je suis la2\n");
		tmp = push_front_element(tmp, min_element);
		show_list(tmp);
		//printf("je suis la3\n");
		actu_element = actu_element->next;
	}

	return tmp;
}

/*--------------------------------------------------------------------------------------------------------*/

List push_front_element(List li, List element) {

	element->next = li;

	return element;

}