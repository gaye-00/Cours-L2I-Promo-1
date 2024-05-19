#include <stdio.h>
#include <string.h>
#include<windows.h>/*Une des fonctions utilisee dans ce programme est contenu dans cette bibliotheque*/
#include<math.h> 
void color(int t,int f);/*prototype de fonction*/

int main()
{

    int choix;
	  char prenom[10];
	  char nom[10];
    int x,y,z,i,age,credit,bonus,creditglobal,j,k,l,m,n,o,p,q,r;                                  /* Declaration des variables a utiliser dans le programme*/
    float a,b,c,delta,moyenne;
    char str[] = "\t\t\t\t----------------------------------------\n\t\t\t\t| PROMO 17-18,Annee academique:2017-2018 |\n\t\t\t\t----------------------------------------\n\n\t\t\t\t----------------------------------------\n\t\t\t\t|         Licence 1 en Informatique      |\n\t\t\t\t|   INF 1141: Algoritme & Programmation 1|\n\t\t\t\t|         --------***--------            |\n\t\t\t\t|            Prof.Papa DIOP              |\n\t\t\t\t-----------------------------------------\n\n\t\t\t--------------------------------------------------------------------\n\t\t\t| Fiche n*2 TD/TP:Structures sélectives(alternatives/conditionnelles) |\n\t\t\t---------------------------------------------------------------------\n\n";
    int len = strlen(str);
   for(i=0;i<len;i++)                      /*Boucle permetant d'afficher les caractères de la chaine un par un*/
    {
     putchar(str[i]);
     Sleep(1);
    }
    system("pause");
    system("cls");
    printf("%70s %73s %53s %60s %56s %66s %63s", "====MEMBRES DU GROUPE====\n\n","-Mamadou Fam (CHEF DE GROUPE) \n","-Bineta Sy\n","-Sada Demba Thiam\n","-Massaer Diop\n","-Serigne Saliou Diongue\n","-Madior Fall Gueye\n \n");/*Permet de centrer le texte*/
    system("pause");
    system("cls");
    do
    {
	  system("cls");
    printf("====MENU====\n\n1.majeur ou mineur\n2.comparaison de deux reels\n3.Parite\n4.minimiun entre trois reels\n5.calculatrice\n6.Resolution equoition second degre\n7.Passage\n8.credit\n9.Permutations\n\nFait ton choix:");
    scanf("%d",&choix);
    system("cls");

    switch(choix)
    {
    case 1:

         color(6,0);
         printf("\t====majeur ou mineur====\n\nEntre ton prenom : ");
         scanf("%s",prenom);
         printf("entre ton nom :");
         scanf("%s",nom);
         printf("entre ton age :");
         scanf("%d",&age);
         if(age<18)
          printf("%s %s est mineur \n",prenom,nom);
         else
				  printf("%s %s est majeur \n",prenom,nom); 
         

    break;

    case 2:

         color(9,0);
         printf("\t=====comparaison de deux reels=====\n\nEntre un nombre entier : ");
         scanf("%d",&x);
         printf("entre un autre nombre entier :");
         scanf("%d",&y);
         if(x==y)
          printf("%d est egal a %d",x,y);
         else if(x<y)
                printf("%d est inferieur a %d\n",x,y);
         else
				  printf("%d est superieur a %d \n",x,y);       
    break;

    case 3:

    	color(1,0);
        printf("\t=====parite=====\n\nEntrer un nombre entier : ");
        scanf("%d",&x);
        if(x>0)
        {
        	if((x%2)==1)
        	 printf("%d est positif et impaire\n",x);
        	else
					 printf("%d est positif et paire\n",x); 
				}
				else
				{
					printf("la valeur absolue de %d est %d\n",x,-x);
				}
         

    break;

    case 4:

       color(4,0);
       printf("\tminimiun entre trois reels\n\nEntre un nombre : ");
       scanf("%d",&x);
       printf("entre un autre nombre :");
       scanf("%d",&y);
       printf("entre un autre nombre :");
       scanf("%d",&z);
       if(x<=y&& z>=y)
        printf("%d est le mininium \n",x);
       else if(y<=x&& z>=x)
        printf("%d est le minimiun\n",y);
       else
			  printf("%d est le minimium\n",z); 
       

    break;

    case 5:

       color(7,0);
       
       printf("=====Calculatrice=======\n\n 1.Addition\n 2.soustraction\n 3.multiplication\n 4.division\n\n Rentre un numero :");
       scanf("%d",&choix);
       printf("\n Entrer un nombre:");
       scanf("%f",&a);
       printf("\n Entrer un autre nombre:");
       scanf("%f",&b);
   	    
   	    
    	switch(choix)
    	{
    		case 1:
    			printf("%f + %f = %f\n",a,b,a + b);
        break;    
	    	case 2:
	    		printf("%f - %f = %f\n",a,b,a - b);
		    break;
	    	case 3:
		    	printf("%f * %f = %f\n",a,b,a * b);
		    break;
		    case 4:
		    	if(b!=0)
		    	 printf("%f / %f = %f\n",a,b,a / b);
		    	else
		    	 printf("erreur");
		    break;
	    	default:
		    	printf("Erreur! Cette operation est incorrecte.\n");
	    }

    break;
    
    case 6:
    	
    	printf("==== Resolution equation second degre aX^2+bX^2+c=0 ====\nEntre a :");
    	scanf("%f",&a);
    	printf("Entre b :");
    	scanf("%f",&b);
    	printf("Entre c :");
    	scanf("%f",&c);
    	delta=(pow(b,2))-(4*a*c);
    	if(delta<0)
    	 printf("l'equation n'admet pas de solutions sur R");
    	else if(delta>0)
    	{
			
			   printf("x1=%f\n",(-b-sqrt(delta)/2*a)) ;
				 printf("x2=%f\n",(-b+sqrt(delta))/2*a);
		  }
		 else
 		    printf("x=%f\n",-b/2*a);
			      
    		
    break;
		
		case 7:
			
			printf("====Passage====\n\nentre ton nombre de credit :");
			scanf("%d",&credit);
			
			if(credit>=60) /*60 42 16 14 12*/
			{
				printf("Entre ta moyenne :");
			  scanf("%f",&moyenne);
			  printf("Passage normal\n ");
				if(moyenne>=16)
				 printf(" mention tres bien\n");
				else if(moyenne>=14)
				  printf("mention bien\n");
				else if (moyenne>=12)
				  printf("mention passable\n");	 
			}
			else if(credit>=42)
			 printf("passage conditionnelle\n");
			else
			 printf("Redoublement\n"); 
		
		break;	
		
		case 8:
			
			printf("====credit====\n\n1.Achat de credit par orange money\n2.Achat de credit par Seddo\n3.Achat de credit par Carte");
			scanf("%d",&choix);
			switch(choix)
			{
				case 1:
					printf("ORANGE MONEY\n\nEntre le credit :");
					scanf("%d",&credit);
					if(credit>1000)
					 bonus=(credit*100)/100;
					else if(credit>500)
					 bonus=(credit*50)/100; 
					 
				break;
				
				case 2:
					printf("SEDDO\n\nEntre le credit :");
					scanf("%d",&credit);
					if(credit>1000)
					 bonus=(credit*50)/100;
					else if(credit>500)
					 bonus=(credit*25)/100; 
					 
				break;
				
				case 3:
				  printf("CARTE\n\nEntre le credit :");
					scanf("%d",&credit);
					if(credit>1000)
					 bonus=(credit*25)/100;
					else if(credit>500)
					 bonus=(credit*10)/100;
				break;
			}
			creditglobal=credit+bonus;
			printf("le bonus alloue est %d\n le solde global est %d",bonus,creditglobal);
			
		break;
		
		case 9 :
			printf("=====Permutation=====\n\nRentre un chiffre :");
			scanf("%d",&j);
			printf("Rentre un autre chiffre :");
			scanf("%d",&k);
			printf("Rentre un autre chiffre :");
			scanf("%d",&l);
			if(j!=k && k!=l && l!=j)
			{
			
			 m=j*100+k*10+l;
			 n=j*100+l*10+k;
			 o=k*100+j*10+l;
			 p=k*100+l*10+j;
			 q=l*100+j*10+k;
			 r=l*100+k*10+l;
			 printf("situations possibles =\n%d\n%d\n%d\n%d\n%d\n%d\n",m,n,o,p,q,r);
	    }
		 else if(j==k && k==l)
		    printf("une situation possible = %d",j*100+j*10+j);
		 else 
		 {
		
		  m=j*100+k*10+l;
		  o=k*100+l*10+j;
		  q=l*100+j*10+k;
		  printf("trois situations possibles = \n%d\n%d\n%d\n",m,o,q);
     }
		     
		break;	

    default:

       printf("\n\nChoix errone.Veillez recommencer et choisir un des chiffres du menu.Merci\n"); /*Au cas ou l'utilisateur ne rentre pas un des chiffres contenus dans le menu*/

     }
    printf("\n0.Retour au menu\n1.Arreter\n\nFais ton choix=");
    scanf("%d",&choix);
    }while(choix==0);


    return 0;
}
void color(int t,int f)  /*Fonction color de type void qui prend deux parametres en entré t et f. t representant la couleur du texte et f celle du fond*/
{
   HANDLE H=GetStdHandle(STD_OUTPUT_HANDLE);
   SetConsoleTextAttribute(H,f*16+t);
}

