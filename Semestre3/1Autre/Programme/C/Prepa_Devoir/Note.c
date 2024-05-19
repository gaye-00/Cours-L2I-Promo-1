
Dlist AjoutDebut_2(Dlist li, int x) {

	Dlist element;

	element = malloc(sizeof(*element));
	element->value = x;

	if(!is_empty_list(li)) {
		element->next = li;
		element->back = NULL;
		li->back = element;
	}

	return element;
}
