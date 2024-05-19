#include <stdio.h>
#include <stdlib.h>

typedef struct ListElement {
	int value;
	struct ListElement *next;
}ListElement, *List;

typedef enum {
	false, //1
	true //0
}Bool;

List new_list(void);
Bool is_empty_list(List li);


//Debut du programme principale
int main(void) {

	ListElement *mylist = NULL;

	if(is_empty_list(mylist))
		printf("La liste est vide\n"); 
	else
		printf("La liste n'est pas vide\n");

	free(mylist);

	return 0;
}

/*------------------------------------------------------------------------------------*/

List new_list(void) {

	return NULL;
}

/*------------------------------------------------------------------------------------*/

Bool is_empty_list(List li) {

	if(li == NULL)
		return true;

	return false;
}

/*------------------------------------------------------------------------------------*/


/*------------------------------------------------------------------------------------*/


/*------------------------------------------------------------------------------------*/


/*------------------------------------------------------------------------------------*/
