#include <stdio.h>
#include <stdlib.h>
#include "DList.h"

int main(void) {
 	
 	DList mylist = new_dlist();
 	printf("La longueur de la liste est %d\n", dlist_length(mylist));
 	print_dlist(mylist);

 	mylist = insert_back_dlist(mylist, 3);
 	mylist = insert_back_dlist(mylist, 17);
 	mylist = insert_front_dlist(mylist, -15);
 	print_dlist(mylist);
 	printf("La longueur de la liste est %d\n", dlist_length(mylist));

 	mylist = insert_front_dlist(mylist, 6);
 	print_dlist(mylist);
 	printf("La longueur de la liste est %d\n", dlist_length(mylist));
 	mylist = erase_front_dlist(mylist);
 	print_dlist(mylist);

 	mylist = clear_dlist(mylist);
 	print_dlist(mylist);
 	printf("La longueur de la liste est %d\n", dlist_length(mylist));

	return 0;
}