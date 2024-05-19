
/*--------------------------------------------------------------------------------------------------------*/


/*List delete_element_threshold(List li, int val1, int val2) {

	if(is_empty_list(li)) {
		printf("Rien a retirer la liste est vide\n");
		return new_list();
	}

	ListElement *element = li;

	if(element->next == NULL) {
		if((element->value > val1) && (element->value < val2)) {
			element = pop_front_list(element);
			return new_list();
		}

		return element;
	}


	ListElement *before = li;
	ListElement *after = li;

	if(element->next->next == NULL) {
		if((element->value > val1) && (element->value < val2)) {
			element = pop_front_list(element);
		}

		if((element->next->value > val1) && (element->next->value < val2)) {
			after = element->next;
			free(after);
			after = NULL;

			element->next = NULL;
			return element;
		}


		return element;
	}

	while(!is_empty_list(element->next)) {
		before = element;
		element = element->next;
		if((element->value > val1) && (element->value < val2))
			element = pop_front_list(element);
	}

	return li;
}*/


void trier(liste la)
{// ici on va ranger les elements dans l'ordre croisssant avant de les afficher.
   liste temp, temp1, temp3;
   int min;
   for(temp=la ; temp!=NULL ; temp=temp->next)
   {
     temp3=temp;
     min=temp->val;
     for(temp1=temp->next ; temp1!=NULL ; temp1=temp1->next)
     {
        if(min > temp1->val)
        {
           temp3=temp1; // le 3è temporaire est l'adresse de l'élement où se trouve le minimum
           min=temp3->val;
        }
     }
     temp3->val=temp->val; //echange des 2 elements...
     temp->val=min;
   }
}



/*List add_position(List li, List element) {


	if(li == NULL) {
		li = element;
		li->next = NULL;
		return li;
	}

	Bool ok = true;
	ListCheval *before = li;

	while((!is_empty_list(before)) && ok) {
		if(before->classsement > element->classsement)
			before = before->next;
		else
			ok = false;
	}

	element->next = before->next;
	before->next = element;

	return li;


}*/

/*--------------------------------------------------------------------------------------------------------*/

/*List sort_list(List li) {

	if(is_empty_list(li))
		return NULL;
	
	ListCheval *element = li;
	ListCheval *tmp;

	tmp = malloc(sizeof(*tmp));

	if(tmp == NULL)
		exit(1);

	tmp = NULL;

	while(!is_empty_list(element)) {
		tmp = add_position(tmp, element);
		element = element->next;
	}

	clear_list(li);

	return tmp;
}*/

/*--------------------------------------------------------------------------------------------------------*/

/*List tri_bulle(List li) {

	if(is_empty_list(li)) {
		printf("Rien a trie la liste est vide\n");
		return NULL;
	}

	ListCheval *i, *j;
	int tmp;


	for(i = li; i != NULL; i = i->next) {
		for(j = i->next; j != NULL; j = j->next) {
			if(i->classsement < j->classsement)

		}
	}
}*/