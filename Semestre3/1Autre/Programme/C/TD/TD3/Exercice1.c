#include <stdio.h>
#include <stdlib.h>

typedef struct ListElement{
	int value;
	struct ListElement *next;
}List;

int sommeElements(List * li);
int minElement(List *li);
int existeElement(List *li, int x);
List *ajoutTete(List *li, int x);
List *inverselist(List *li);
void affichage(List *li);
List *pop_front_list(List *li);
List *clear_list(List *li);

//Debut du programme principal
int main(void) {

	List *mylist = NULL;

	mylist = ajoutTete(mylist, 15);
	mylist = ajoutTete(mylist, 30);
	mylist = ajoutTete(mylist, 45);
	mylist = ajoutTete(mylist, 3);
	mylist = ajoutTete(mylist, 5);

	printf("Affichage des elements de la liste\n");
	affichage(mylist);

	printf("\nLe plus petit element de la liste est %d\n", minElement(mylist));
	printf("La somme des elements de la liste est %d\n", sommeElements(mylist));

	printf("\nAffichage des elements inverses de la liste\n");
	mylist = inverselist(mylist);
	affichage(mylist);

	int val;
	printf("Donner un element a chercher dans la liste : ");
	scanf("%d", &val);

	if(existeElement(mylist, val) == 1)
		printf("%d est dans la liste\n", val);
	else
		printf("%d n'est pas dans la liste\n", val);

	return 0;
}

/*-------------------------------------------------------------------------------*/

int sommeElements(List *li) {

	int somme = 0;
	List *element = li;

	while(element != NULL) {
		somme += element->value;
		element = element->next;
	}

	return somme;
}

/*-------------------------------------------------------------------------------*/

int minElement(List *li) { 

	int min = li->value;
	List *element = li;

	while(element != NULL) {
		if(min > element->value)
			min = element->value;

		element = element->next;
	}

	return min;
}

/*-------------------------------------------------------------------------------*/

int existeElement(List *li, int x) {

	List *element = li;

	while((element != NULL) && (x != element->value))
		element = element->next;

	if(element != NULL)
		return 1;
	else
		return 0;
}

/*-------------------------------------------------------------------------------*/

List *ajoutTete(List *li, int x) {
	List *new;

	new = (List*)malloc(sizeof(List));
	//new = malloc(sizeof(*new));

	if(new == NULL) {
		fprintf(stderr, "Probleme d'allocation dynamique de la memoire...\n");
		exit(EXIT_FAILURE);
	}

	new->value = x;
	new->next = li;

	return new;
}

/*-------------------------------------------------------------------------------*/

List *inverselist(List *li) {
	List *element = li, *tmp = NULL; 

	while(element != NULL) {
		tmp = ajoutTete(tmp, element->value);
		element = element->next;
	}

	li = pop_front_list(li);
	return tmp;
}

/*-------------------------------------------------------------------------------*/

void affichage(List *li) {
	List *element = li; 
	int i = 1;

	while(element != NULL) {
		printf("Valeur %d = %d\n", i, element->value);
		element = element->next;
		i++;
	}
	return;
}

/*-------------------------------------------------------------------------------*/

List *pop_front_list(List *li) {
	List *element;

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

/*-------------------------------------------------------------------------------*/

List *clear_list(List *li) {

	if(li == NULL)
		return NULL;

	while(li != NULL)
		li = pop_front_list(li);

	return NULL;
}