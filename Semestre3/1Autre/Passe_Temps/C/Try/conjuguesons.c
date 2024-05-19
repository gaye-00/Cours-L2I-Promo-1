#include <stdio.h> 
#include <string.h> 
int main() {
   int i;
   
   char sujets[6][13]  = {"je","tu","il ou elle","nous","vous","ils ou elles"};
   char terminaisons[6][5] = {"e","es","e","ons","ez","ent"};
   
   char verbe[15]; /* chaîne contenant le verbe */
   int longueur;   /* longueur du verbe */
   
   printf("Quel verbe souhaitez-vous conjuguer ? ");
   scanf("%s", verbe);
   
   /* S'agit-il d'un verbe se terminant par "er" ? */
   longueur=strlen(verbe);
   /*printf("longueur = %d\n", longueur);*/
   if ((verbe[longueur-2] != 'e') || (verbe[longueur-1] != 'r'))
      printf("%s n'est pas un verbe du premier groupe !!!\n",verbe);
   else  {
      /* Supprimer la terminaison "er" */
      verbe[longueur-2]='\0';
      /* Conjuguer le verbe */
      for (i=0; i<6; i++)
         printf("%s %s%s\n",sujets[i], verbe, terminaisons[i]);
   }
   return 0;
}