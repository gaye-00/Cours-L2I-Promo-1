#include "Liste.h"

int main(void) {

	List mylist = new_list();

	printf("La longueur de la Liste est : %d\n", list_length(mylist));
	print_list(mylist);

	mylist = push_back_list(mylist, 36);
	mylist = push_front_list(mylist, 15);
	mylist = push_back_list(mylist, -78);
	mylist = push_front_list(mylist, 03);
	print_list(mylist);
	printf("La longueur de la Liste est : %d\n", list_length(mylist));

	mylist = pop_front_list(mylist);
	print_list(mylist);
	mylist = pop_back_list(mylist);
	print_list(mylist);
	printf("La longueur de la Liste est : %d\n", list_length(mylist));
	mylist = pop_front_list(mylist);
	print_list(mylist);
	mylist = clear_list(mylist);
	print_list(mylist);
	printf("La longueur de la Liste est : %d\n", list_length(mylist));

	return 0;
}