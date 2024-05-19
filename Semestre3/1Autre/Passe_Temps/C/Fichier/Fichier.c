#include <stdio.h>
#include <stdlib.h>
/*---------------------------------------------------------------------------------*/

int main(void)
{
	FILE* f = NULL;

	// w+ ==> lecture et ecriture avec suppression auprealable des donnees
	// r+ ==> lecture et ecriture sans suppression des donnees
	// a+ ==> ajouter et lecture des elements dans le fichier

	f = fopen("mon_fichier.dat", "w+");

	if(f != NULL) {

		//Ecrire dans le fichier en cas de non probleme
		fclose(f);
	}
	else 
		printf("L'ouverture du fichier <<mon_fichier.dat>> est impossible\n");

	return 0;
}

//=============================  Mettre des donnees dans un fichier =============================//
// fputc('char', nom_f) ==> Entrer un carartere
// fputs("chaine", nom_f) ==> Entrer une chaine
// fprintf(nom_f, "chaine", var) ==> Enter une chaine
// fwrite(adresse, sizeof(Ex: Sturture), nombre, nom_f) ==> Entrer une chaine avec la taille

//=============================  Recuperer des donnees dans un fichier =============================//
// char = fgetc(nom_f) ==> Recuperer le caractere "char" dans nom_f
// fgets(chaine, TAILLE_MAX, nom_f) ==> Recuper la chaine de taille "TAILLE_MAX", dans nom_f
//				mais cette fonction lit qu'une ligne
// 				Si on veut tout lire on doit uitliser une boucle 
// fscanf(nom_f, "%s %d", &nom_s, &nom_int) ==> Recuper une chaine dans nom_f
// fread(&nom(adresse), sizeof(Ex: Sturture), nombre, nom_f) ==> Recuperer la chaine

//==================================  Se deplacer dans le fichier ==================================//