#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#define taille_max  3
#define taille_max2  50
#define ligne  8
#define colonne  8
int c=0;					/*gestion de la couleur*/
struct echiquier				/*constitution d'une case*/
{
	char nom_piece[taille_max];
};
struct echiquier plateau[ligne][colonne];	/*plateau de jeu*/
void nouveaujeu();
void sauvegarde();
void chargement();
void Option();
void initialisation();				/*initialisation des pièces*/
void affichage();
int droit(int x, int y, int xd, int yd, float reste, char piece[2], int 
type);
int echecnoir();
int echecblanc();

int  main()
{
int choix=-1, test=0;

	system ("clear");			/*efface l'ecran*/
	printf("Bienvenue au jeu d'échecs\n");
	printf("-1- Nouvelle partie\n");
	printf("-2- Charger\n");
	printf("-0- Quitter\n");
	printf("Choix?");
	scanf("%d",&choix);

	switch (choix)
	{
		case 1 :initialisation();
			c=0;
			nouveaujeu();
			break;
		case 2 :chargement();
			break;
		case 0 :printf("Au revoir\n");
			break;
		default :printf("Erreur de saisie\n");
			 break;
	}

	return 0;
}

/*------------------------------------------------*/

void Option()
{
int choix=-1;
char vide[2], retour[2];

	system ("clear");		/*efface l'ecran*/
	printf("Options\n");
	printf("-1- Retour au menu principal\n");
	printf("-2- Enregistrement de la partie\n");
	printf("-3- Aide pour les mouvements de pieces\n");
	printf("-0- Retour à la partie\n");

	printf("Choix?");
	scanf("%d",&choix);
	switch (choix)
	{
		case 1 :main();
			break;
		case 2 :sauvegarde();
			break;
		case 3 :system ("clear");
			printf("\n\tPour un deplacement : \"pa7-a5\"");
			printf("\n\tPour une prise : \"pa7xa5\"");
			printf("\n\tPour le petit roque : \"00\"");
			printf("\n\tPour le grand roque : \"000\"");
			printf("\n\tTapez sur n'importe qu'elle touche !\n");
			scanf("%s",retour);
			c--;
			nouveaujeu();
			break;
		case 0 :c--;
			nouveaujeu();
			break;
		default :printf("Erreur de saisie\n");
			 printf("Tapez sur n'importe qu'elle touche !\n");
			 scanf("%s",vide);
			 scanf("%s",retour);
			 c--;
			 nouveaujeu();
			 break;
	}
}

/*------------------------------------------------*/

void initialisation()
{
int a, b;
	for (a=0;a<8;a++)
		for (b=0;b<8;b++)
			strcpy(plateau[a][b].nom_piece,"  ");/*Remise à zero de l'echiquier*/

	for (b=0;b<8;b++)
		{
		strcpy(plateau[1][b].nom_piece,"pb");
		strcpy(plateau[6][b].nom_piece,"pn");
		} /*declaration de depart des blancs et des noirs*//*la piece 1 est un 
pion blanc, la piece 7 un pion noir*/
	strcpy(plateau[0][0].nom_piece,"Tb"); 	/*Tour blanche*/
	strcpy(plateau[0][7].nom_piece,"Tb");	 /*Tour blanche*/
	strcpy(plateau[0][1].nom_piece,"Cb");	 /*Cavalier blanc*/
	strcpy(plateau[0][6].nom_piece,"Cb");	 /*Cavalier blanc*/
	strcpy(plateau[0][2].nom_piece,"Fb");	 /*Fou blanc*/
	strcpy(plateau[0][5].nom_piece,"Fb");	 /*Fou blanc*/
	strcpy(plateau[0][3].nom_piece,"Db");	 /*Dame blanc*/
	strcpy(plateau[0][4].nom_piece,"Rb");    /*Roi blanc*/
	strcpy(plateau[7][0].nom_piece,"Tn");	 /*Tour noir*/
	strcpy(plateau[7][7].nom_piece,"Tn");	 /*Tour noir*/
	strcpy(plateau[7][1].nom_piece,"Cn");	 /*Cavalier noir*/
	strcpy(plateau[7][6].nom_piece,"Cn");	 /*Cavalier noir*/
	strcpy(plateau[7][2].nom_piece,"Fn");	 /*Fou noir*/
	strcpy(plateau[7][5].nom_piece,"Fn");	 /*Fou noir*/
	strcpy(plateau[7][3].nom_piece,"Dn");	 /*Dame noir*/
	strcpy(plateau[7][4].nom_piece,"Rn");	 /*Roi noir*/
}

/*------------------------------------------------*/

void nouveaujeu()
{
int mate=0, option=-1, a, b, x, y, xd, yd, i, r, m, comp1, comp2, comp3, 
comp4, comp5, type, verif, test1, test2, numechec=0;
float reste;
char piece[3], coup[8], ok[2], chess[2], vide[2];

	for( a=0; a<8; a++)
	{
		for (b=0; b<8; b++)
		{
			test1=strcmp(plateau[a][b].nom_piece, "00")==0;
			if (test1)
			{
				strcpy(plateau[a][b].nom_piece, "  ");
			}
		}
	}
	while(!mate)
	{
		c++;
		reste=c%2;
		system ("clear");		/*efface l'ecran*/
		affichage();
		for (i=0;i<5;i++) /*remet a 0 la variable du coup ecoule*/
		{
			coup[i]=0;
		}
		printf("\n\tPour visualiser le menu d'option, taper \"O\"");
		printf("\n\tPour savoir comment bouger les pieces, aller dans le menu option\n");
		if (reste!=0)
		{
			printf("\n\tVous jouez avec les noirs");
		}
		else
		{
			printf("\n\tVous jouez avec les blancs");
		}

		printf("\n\tQue jouez vous?");
		scanf("%s",coup);
		option=(strcmp(coup,"O")==0);
		if (!option)
		{
			type=coup[3];
			if (reste!=0)
			{		/*detection de la piece	utilisee*/
				if (coup[0]==112) strcpy(piece,"pn"); 	/*ici un pion*/
				else if (coup[0]==84) strcpy(piece,"Tn");	/*ici une tour*/
				else if (coup[0]==67) strcpy(piece,"Cn");	/*ici un cavalier*/
				else if (coup[0]==70) strcpy(piece,"Fn");	/*ici un fou*/
				else if (coup[0]==68) strcpy(piece,"Dn");	/*ici une dame*/
				else if (coup[0]==82) strcpy(piece,"Rn");	/*ici un roi*/
				else if (coup[1]==48) 				/*ici les roques*/
				{
					if (coup[2]==48) 	  		/*ici le grand roque*/
					{
						strcpy(piece,"000");
					}
					else
					{
						strcpy(piece,"00"); 			/*ici le petit roque*/
					}
				}
			}
			else
			{
				if (coup[0]==112) strcpy(piece,"pb"); 	/*ici un pion*/
				else if (coup[0]==84) strcpy(piece,"Tb");	/*ici une tour*/
				else if (coup[0]==67) strcpy(piece,"Cb");	/*ici un cavalier*/
				else if (coup[0]==70) strcpy(piece,"Fb");	/*ici un fou*/
				else if (coup[0]==68) strcpy(piece,"Db");	/*ici une dame*/
				else if (coup[0]==82) strcpy(piece,"Rb");	/*ici un roi*/
				else if (coup[1]==48) 				/*ici les roques*/
				{
					if (coup[2]==48) 	  		/*ici le grand roque*/
					{
						strcpy(piece,"000");
					}
					else
					{
						strcpy(piece,"00"); 			/*ici le petit roque*/
					}
				}
			}
			printf("piece = %s\n", piece);
			if (type==45)
			{
				xd=coup[2]-49;		/*xd de depart*/
				yd=coup[1]-97;		/*yd de depart*/
				x=coup[5]-49;		/*x d'arrivee*/
				y=coup[4]-97;		/*y d'arrivee*/
			}
			else if (type==120)
			{						/*si le deuxieme caractere est x*/
				xd=coup[2]-49;		/*xd de depart*/
				yd=coup[1]-97;		/*yd de depart*/
				x=coup[5]-49;		/*x d'arrivee*/
				y=coup[4]-97;		/*y d'arrivee*/
			}
			if(type==45 || type==120)
			{
				if(reste!=0)
				{
					if (plateau[xd][yd].nom_piece[1]==110)
					{
						verif=(strcmp(plateau[xd][yd].nom_piece,"  ")==0);
						if (x>-1 && x<8 && y>-1 && y<8 && xd>-1 && xd<8 && yd>-1 && yd<8 && 
!verif)
						{
							test2=0;
							while(!test2)
							{
								printf("deplacement de la piece de (%d, %d) en (%d, %d) - O / N ?", 
xd, yd, x, y);
								scanf("%s",ok);
								if((ok[0]==79)||(ok[0]==78))
								{
									test2=1;
								}
							}
							if (ok[0]==79)
							{
								r=droit(x, y, xd, yd, reste, piece, type);
								if (r==1)
								{
									strcpy(plateau[x][y].nom_piece,piece);
									strcpy(plateau[xd][yd].nom_piece,"  ");
									m=echecblanc();
									if (m==0)
									{
										m=echecnoir();
										if (m==0)
										{
											numechec=0;
											printf("Il n'y a pas d'échec\n");
											printf("Tapez sur n'importe qu'elle touche !\n");
											scanf("%s",chess);
										}
										else
										{
											numechec=0;
											printf("Les blancs sont echecs !\n");
											printf("Tapez sur n'importe qu'elle touche !\n");
											scanf("%s",chess);
										}
									}
									else
									{
										numechec++;
										if (numechec<3)
										{
											c--;
											strcpy(plateau[xd][yd].nom_piece,piece);
											strcpy(plateau[x][y].nom_piece,"  ");
											printf("Vous etes echec! c'est un mouvement impossible !\n");
										}
										else if (numechec>2)
										{
											printf("Vous etes echec et mate !\n");
											mate=1;
										}
										printf("Tapez sur n'importe qu'elle touche !\n");
										scanf("%s",chess);
										if (numechec>2)
										{
											main();
										}
									}
								}
								else
								{
									c--;		/*cela permet au meme joueur de rejouer*/
									printf("Coup invalide\n");
									printf("Tapez sur n'importe qu'elle touche !\n");
									scanf("%s",chess);
								}
							}
							else if(ok[0]==78)
							{
								c--;			/*cela permet au meme joueur de rejouer*/
								printf("Vous pouvez choisir un autre coup\n");
								printf("Tapez sur n'importe qu'elle touche !\n");
								scanf("%s",chess);
							}
						}
						else
						{
							c--;				/*cela permet au meme joueur de rejouer*/
							printf("Vous vous etes trompé de coordonnées!\n");
							printf("Tapez sur n'importe qu'elle touche !\n");
							scanf("%s",chess);
						}
					}
					else
					{
						c--;				/*cela permet au meme joueur de rejouer*/
						printf("Vous jouez avec les noirs !\n");
						printf("Tapez sur n'importe qu'elle touche !\n");
						scanf("%s",vide);
						scanf("%s",chess);
					}
				}
				else
				{
					if (plateau[xd][yd].nom_piece[1]==98)
					{
						verif=(strcmp(plateau[xd][yd].nom_piece,"  ")==0);
						if (x>-1 && x<8 && y>-1 && y<8 && xd>-1 && xd<8 && yd>-1 && yd<8 && 
!verif)
						{
							test2=0;
							while(!test2)
							{
								printf("deplacement de la piece de (%d, %d) en (%d, %d) - O / N ?", 
xd, yd, x, y);
								scanf("%s",ok);
								if((ok[0]==79)||(ok[0]==78))
								{
									test2=1;
								}
							}
							if (ok[0]==79)
							{
								r=droit(x, y, xd, yd, reste, piece, type);
								if (r==1)
								{
									strcpy(plateau[x][y].nom_piece,piece);
									strcpy(plateau[xd][yd].nom_piece,"  ");
									m=echecnoir();
									if (m==0)
									{
										m=echecblanc();
										if (m==0)
										{
											numechec=0;
											printf("Il n'y a pas d'échec !\n");
											printf("Tapez sur n'importe qu'elle touche !\n");
											scanf("%s",chess);
										}
										else
										{
											numechec=0;
											printf("Les noirs sont echecs !\n");
											printf("Tapez sur n'importe qu'elle touche !\n");
											scanf("%s",chess);
										}
									}
									else
									{
										numechec++;
										if (numechec<3)
										{
											c--;
											strcpy(plateau[xd][yd].nom_piece,piece);
											strcpy(plateau[x][y].nom_piece,"  ");
											printf("Vous etes echec! c'est un mouvement impossible !\n");
										}
										else if (numechec>2)
										{
											printf("Vous etes echec et mate ! \n");
											mate=1;
										}
										printf("Tapez sur n'importe qu'elle touche !\n");
										scanf("%s",chess);
										if (numechec>2)
										{
											main();
										}
									}
								}
								else
								{
									c--;		/*cela permet au meme joueur de rejouer*/
									printf("Coup invalide\n");
									printf("Tapez sur n'importe qu'elle touche !\n");
									scanf("%s",chess);
								}
							}
							else if(ok[0]==78)
							{
								c--;			/*cela permet au meme joueur de rejouer*/
								printf("Vous pouvez choisir un autre coup\n");
								printf("Tapez sur n'importe qu'elle touche !\n");
								scanf("%s",chess);
							}
						}
						else
						{
							c--;				/*cela permet au meme joueur de rejouer*/
							printf("Vous vous etes trompé de coordonnées!\n");
							printf("Tapez sur n'importe qu'elle touche !\n");
							scanf("%s",chess);
						}
					}
					else
					{
						c--;				/*cela permet au meme joueur de rejouer*/
						printf("Vous jouez avec les blancs !\n");
						printf("Tapez sur n'importe qu'elle touche !\n");
						scanf("%s",vide);
						scanf("%s",chess);
					}
				}
			}
			else if(piece[0]==48)
			{
				if(piece[2]==48)
				{
					if (reste!=0)
					{
						comp1=(strcmp(plateau[7][4].nom_piece,"Rn")==0);
						comp2=(strcmp(plateau[7][3].nom_piece,"  ")==0);
						comp3=(strcmp(plateau[7][2].nom_piece,"  ")==0);
						comp4=(strcmp(plateau[7][1].nom_piece,"  ")==0);
						comp5=(strcmp(plateau[7][0].nom_piece,"Tn")==0);
						if (comp1 && comp2 && comp3 && comp4 && comp5)
						{
							strcpy(plateau[7][3].nom_piece,"Tn");
							strcpy(plateau[7][2].nom_piece,"Rn");
							strcpy(plateau[7][4].nom_piece,"  ");
							strcpy(plateau[7][0].nom_piece,"  ");
						}
						else
						{
							c--;				/*cela permet au meme joueur de rejouer*/
							printf("Le roque est impossible !\n");
							printf("Tapez sur n'importe qu'elle touche !\n");
							scanf("%s",chess);
						}
					}
					else
					{
						comp1=(strcmp(plateau[0][4].nom_piece,"Rn")==0);
						comp2=(strcmp(plateau[0][3].nom_piece,"  ")==0);
						comp3=(strcmp(plateau[0][2].nom_piece,"  ")==0);
						comp4=(strcmp(plateau[0][1].nom_piece,"  ")==0);
						comp5=(strcmp(plateau[0][0].nom_piece,"Tn")==0);
						if (comp1 && comp2 && comp3 && comp4 && comp5)
						{
							strcpy(plateau[0][3].nom_piece,"Tb");
							strcpy(plateau[0][2].nom_piece,"Rb");
							strcpy(plateau[0][4].nom_piece,"  ");
							strcpy(plateau[0][0].nom_piece,"  ");
						}
						else
						{
							c--;				/*cela permet au meme joueur de rejouer*/
							printf("Le roque est impossible !\n");
							printf("Tapez sur n'importe qu'elle touche !\n");
							scanf("%s",chess);
						}
					}
				}
				else if(piece[1]==48)
				{
					if (reste!=0)
					{
						comp1=(strcmp(plateau[7][4].nom_piece,"Rn")==0);
						comp2=(strcmp(plateau[7][5].nom_piece,"  ")==0);
						comp3=(strcmp(plateau[7][6].nom_piece,"  ")==0);
						comp4=(strcmp(plateau[7][7].nom_piece,"Tn")==0);
						if (comp1 && comp2 && comp3 && comp4)
						{
							strcpy(plateau[7][5].nom_piece,"Tn");
							strcpy(plateau[7][6].nom_piece,"Rn");
							strcpy(plateau[7][4].nom_piece,"  ");
							strcpy(plateau[7][7].nom_piece,"  ");
						}
						else
						{
							c--;				/*cela permet au meme joueur de rejouer*/
							printf("Le roque est impossible !\n");
							printf("Tapez sur n'importe qu'elle touche !\n");
							scanf("%s",chess);
						}
					}
					else
					{
						comp1=(strcmp(plateau[0][4].nom_piece,"Rn")==0);
						comp2=(strcmp(plateau[0][5].nom_piece,"  ")==0);
						comp3=(strcmp(plateau[0][6].nom_piece,"  ")==0);
						comp4=(strcmp(plateau[0][7].nom_piece,"Tn")==0);
						if (comp1 && comp2 && comp3 && comp4)
						{
							strcpy(plateau[0][5].nom_piece,"Tb");
							strcpy(plateau[0][6].nom_piece,"Rb");
							strcpy(plateau[0][4].nom_piece,"  ");
							strcpy(plateau[0][7].nom_piece,"  ");
						}
						else
						{
							c--;				/*cela permet au meme joueur de rejouer*/
							printf("Le roque est impossible !\n");
							printf("Tapez sur n'importe qu'elle touche !\n");
							scanf("%s",chess);
						}
					}
				}
			}
			else
			{
				c--;				/*cela permet au meme joueur de rejouer*/
				printf("Vous vous etes trompé de coordonnées!\n");
				printf("Tapez sur n'importe qu'elle touche !\n");
				scanf("%s",chess);
			}
		}
		else
		{
			Option();
			break;
		}
	}
}

/*------------------------------------------------*/

void affichage()
{
int a, b, c=0, couleur;

	system ("clear");		/*efface l'ecran*/
	printf("\n\t|--a----b----c----d---e----f----g----h--|\n\t");
	printf("|---------------------------------------|\n\t"); /*Les affichages 
sont tres basics, seulement des lettres et les
	coordonnees des cases*/
	for (a=0;a<8;a++)		/*fait varier l'abscisse de 0 a  7 ce qui corespond aux 
colonnes de 'a' a  'h'*/
	{
		for (b=0;b<8;b++)	/*idem pour l'ordonnee ce qui corespond aux lignes de 
'1' a  '8'.*/
		{
			c++;
			printf("| %s ",plateau[a][b].nom_piece);
			if ( c % 8 == 0) /*si 8 cases ont ete affichees alors on retourne a la 
ligne*/
			printf("|%d\n\t|---------------------------------------|\n\t", c/8);
		}
	}
	printf("|--a----b----c----d---e----f----g----h--|\n");
}

/*------------------------------------------------*/

int droit(int x, int y, int xd, int yd, float reste, char piece[2], int 
type)
{
int droits, c, a , b, i, t=0, j, r=0, depart, e, f, calcul=0, verif1, 
verif2;
	if (type==45)
	{
		if(piece[0]==112)				/*pion*/
		{
			if(piece[1]==98)			/*blanc*/
			{
				if (yd==y)
				{
					verif1=(strcmp(plateau[x][y].nom_piece,"  ")==0);
					if (verif1)
					{
						depart=x-1;
						for (i=depart; i>xd; i--)
						{
							verif2=(strcmp(plateau[i][yd].nom_piece,"  ")==0);
							if(!verif2)
							{
								calcul=calcul+1;
							}
						}
						if (calcul==0)
						{
							if (xd==1)
							{
								if (x-xd==1 || x-xd==2)
								{
									droits=1;
									return droits;
								}
							}
							else if (x-xd==1)
							{
								droits=1;
								return droits;
							}
						}
					}
				}
			}
			else if(piece[1]==110)			/*noir*/
			{
				if (yd==y)
				{
					verif1=(strcmp(plateau[x][y].nom_piece,"  ")==0);
					if (verif1)
					{
						depart=x+1;
						for (i=depart; i<xd; i++)
						{
							verif2=(strcmp(plateau[i][yd].nom_piece,"  ")==0);
							if(!verif2)
							{
								calcul=calcul+1;
							}
						}
						if (calcul==0)
						{
							if (xd==6)
							{
								if (xd-x==1 || xd-x==2)
								{
									droits=1;
									return droits;
								}
							}
							else if (xd-x==1)
							{
								droits=1;
								return droits;
							}
						}
					}
				}
			}
		}
		if(piece[0]==82)				/*roi*/
		{
			if(piece[1]==110 || piece[1]==98)			/*noir et blanc*/
			{
				verif1=(strcmp(plateau[x][y].nom_piece,"  ")==0);
				if (verif1)
				{
					if (xd-x==1 || x-xd==1 || yd-y==1 || y-yd==1)
					{
						droits=1;
						return droits;
					}
				}
			}
		}
		else if(piece[0]==68)				/*dame*/
		{
			if(piece[1]==110 || piece[1]==98)			/*noir et blanc*/
			{
				verif1=(strcmp(plateau[x][y].nom_piece,"  ")==0);
				if (verif1)
				{
					if(y==yd)
					{
						if (x<xd)
						{
							depart=x+1;
							for (i=depart; i<xd; i++)
							{
								verif2=(strcmp(plateau[i][yd].nom_piece,"  ")==0);
								if(!verif2)
								{
									calcul=calcul+1;;
								}
							}
						}
						else if(x>xd)
						{
							depart=x-1;
							for (i=depart; i>xd; i--)
							{
								verif2=(strcmp(plateau[i][yd].nom_piece,"  ")==0);
								if(!verif2)
								{
									calcul=calcul+1;
								}
							}						}
						}
					else if(x==xd)
					{
						if (y<yd)
						{
							depart=y+1;
							for (i=depart; i<yd; i++)
							{
								verif2=(strcmp(plateau[xd][i].nom_piece,"  ")==0);
								if(!verif2)
								{
									calcul=calcul+1;
								}
							}
						}
						else if(y>yd)
						{
							depart=y-1;
							for (i=depart; i>yd; i--)
							{
								verif2=(strcmp(plateau[xd][i].nom_piece,"  ")==0);
								if(!verif2)
								{
									calcul=calcul+1;
								}
							}
						}
					}
					else if((x-xd==yd-y)||(x-xd==y-yd))
					{
						if (x>xd)
						{
							t=x-xd;
						}
						else
						{
							t=xd-x;
						}
						for (i=1; i<t; i++)
						{
							if (x<xd && y>yd)
							{
								e=xd-i;
								f=yd+i;
							}
							else if(x<xd && y<yd)
							{
								e=xd-i;
								f=yd-i;
							}
							else if (x>xd && y>yd)
							{
								e=xd+i;
								f=yd+i;
							}
							else if(x>xd && y<yd)
							{
								e=xd+i;
								f=yd-i;
							}
							verif2=(strcmp(plateau[e][f].nom_piece,"  ")==0);
							if(!verif2)
							{
								calcul=calcul+1;
							}
						}
					}
					if (calcul==0)
					{
						if (x==xd || y==yd || (x-xd==yd-y) || (x-xd==y-yd))
						{
							droits=1;
							return droits;
						}
					}
				}
			}
		}
		else if(piece[0]==84)				/*tour*/
		{
			if(piece[1]==110 || piece[1]==98)			/*noir et blanc*/
			{
				verif1=(strcmp(plateau[x][y].nom_piece,"  ")==0);
				if (verif1)
				{
					if(y==yd)
					{
						if (x<xd)
						{
							depart=x+1;
							for (i=depart; i<xd; i++)
							{
								verif2=(strcmp(plateau[i][yd].nom_piece,"  ")==0);
								if(!verif2)
								{
									calcul=calcul+1;
								}
							}
						}
						else if(x>xd)
						{
							depart=x-1;
							for (i=depart; i>xd; i--)
							{
								verif2=(strcmp(plateau[i][yd].nom_piece,"  ")==0);
								if(!verif2)
								{
									calcul=calcul+1;
								}
							}
						}
					}
					else if(x==xd)
					{
						if (y<yd)
						{
							depart=y+1;
							for (i=depart; i<yd; i++)
							{
								verif2=(strcmp(plateau[xd][i].nom_piece,"  ")==0);
								if(!verif2)
								{
									calcul=calcul+1;
								}
							}
						}
						else if(y>yd)
						{
							depart=y-1;
							for (i=depart; i>yd; i--)
							{
								verif2=(strcmp(plateau[xd][i].nom_piece,"  ")==0);
								if(!verif2)
								{
									calcul=calcul+1;
								}
							}
						}
					}
					if (calcul==0)
					{
						if ((x==xd)||(y==yd))
						{
							droits=1;
							return droits;
						}
					}

				}
			}
		}
		else if(piece[0]==67)				/*cavalier*/
		{
			if(piece[1]==110 || piece[1]==98)			/*noir et blanc*/
			{
				verif1=(strcmp(plateau[x][y].nom_piece,"  ")==0);
				if (verif1)
				{
					if (((xd-x==2) && (yd-y==1)) || ((xd-x==2) && (y-yd==1)) || ((x-xd==2) 
&& (yd-y==1)) || ((x-xd==2) && (y-yd==1))
			|| ((xd-x==1) && (yd-y==2)) || ((xd-x==1) && (y-yd==2)) || ((x-xd==1) && 
(yd-y==2)) || ((x-xd==1) && (y-yd==2)))	/*noir*/
					{
						droits=1;
						return droits;
					}
				}
			}
		}
		else if(piece[0]==70)				/*fou*/
		{
			if(piece[1]==110 || piece[1]==98)			/*noir et blanc*/
			{
				verif1=(strcmp(plateau[x][y].nom_piece,"  ")==0);
				if (verif1)
				{
					if (x>xd)
					{
						t=x-xd;
					}
					else
					{
						t=xd-x;
					}
					for (i=1; i<t; i++)
					{
						if (x<xd && y>yd)
						{
							e=xd-i;
							f=yd+i;
						}
						else if(x<xd && y<yd)
						{
							e=xd-i;
							f=yd-i;
						}
						else if (x>xd && y>yd)
						{
							e=xd+i;
							f=yd+i;
						}
						else if(x>xd && y<yd)
						{
							e=xd+i;
							f=yd-i;
						}
						verif2=(strcmp(plateau[e][f].nom_piece,"  ")==0);
						if(!verif2)
						{
							calcul=calcul+1;
						}
					}

					if (calcul==0)
					{
						if((x-xd==yd-y)||(x-xd==y-yd))
						{
							droits=1;
							return droits;
						}
					}
				}
			}
		}
	}
	else if (type==120)
	{
		if(piece[0]==112)				/*pion*/
		{
			if(piece[1]==98)			/*blanc*/
			{
				if (plateau[x][y].nom_piece[1]==110)
				{
					if ((x-xd==1 && y-yd==1)||(x-xd==1 && yd-y==1))
					{
						droits=1;
						return droits;
					}
				}
			}
			else if(piece[1]==110)			/*noir*/
			{
				if (plateau[x][y].nom_piece[1]==98)
				{
					if ((xd-x==1 && y-yd==1)||(xd-x==1 && yd-y==1))
					{
						droits=1;
						return droits;
					}
				}
			}
		}
		if(piece[0]==82)				/*roi*/
		{
			if(piece[1]==98)			/*blanc*/
			{
				if (plateau[x][y].nom_piece[1]==110)
				{
					if ((xd-x==1) || (x-xd==1) || (yd-y==1) || (y-yd==1))
					{
						droits=1;
						return droits;
					}
				}
			}
			else if(piece[1]==110)			/*noir*/
			{
				if (plateau[x][y].nom_piece[1]==98)
				{
					if ((xd-x==1) || (x-xd==1) || (yd-y==1) || (y-yd==1))
					{
						droits=1;
						return droits;
					}
				}
			}
		}
		else if(piece[0]==68)				/*dame*/
		{
			if(piece[1]==98)			/*blanc*/
			{
				if (plateau[x][y].nom_piece[1]==110)
				{
					if(y==yd)
					{
						if (x<xd)
						{
							depart=x+1;
							for (i=depart; i<xd; i++)
							{
								verif2=(strcmp(plateau[i][yd].nom_piece,"  ")==0);
								if(!verif2)
								{
									calcul=calcul+1;
								}
							}
						}
						else if(x>xd)
						{
							depart=x-1;
							for (i=depart; i>xd; i--)
							{
								verif2=(strcmp(plateau[i][yd].nom_piece,"  ")==0);
								if(!verif2)
								{
									calcul=calcul+1;
								}
							}
						}
					}
					else if(x==xd)
					{
						if (y<yd)
						{
							depart=y+1;
							for (i=depart; i<yd; i++)
							{
								verif2=(strcmp(plateau[xd][i].nom_piece,"  ")==0);
								if(!verif2)
								{
									calcul=calcul+1;
								}
							}
						}
						else if(y>yd)
						{
							depart=y-1;
							for (i=depart; i>yd; i--)
							{
								verif2=(strcmp(plateau[xd][i].nom_piece,"  ")==0);
								if(!verif2)
								{
									calcul=calcul+1;
								}
							}
						}
					}
					else if((x-xd==yd-y)||(x-xd==y-yd))
					{
						if (x>xd)
						{
							t=x-xd;
						}
						else
						{
							t=xd-x;
						}
						for (i=1; i<t; i++)
						{
							if (x<xd && y>yd)
							{
								e=xd-i;
								f=yd+i;
							}
							else if(x<xd && y<yd)
							{
								e=xd-i;
								f=yd-i;
							}
							else if (x>xd && y>yd)
							{
								e=xd+i;
								f=yd+i;
							}
							else if(x>xd && y<yd)
							{
								e=xd+i;
								f=yd-i;
							}
							verif2=(strcmp(plateau[e][f].nom_piece,"  ")==0);
							if(!verif2)
							{
								calcul=calcul+1;
							}
						}
					}
					if (calcul==0)
					{
						droits=1;
						return droits;
					}
				}
			}
			else if(piece[1]==110)			/*noir*/
			{
				if (plateau[x][y].nom_piece[1]==98)
				{
					if(y==yd)
					{
						if (x<xd)
						{
							depart=x+1;
							for (i=depart; i<xd; i++)
							{
								verif2=(strcmp(plateau[i][yd].nom_piece,"  ")==0);
								if(!verif2)
								{
									calcul=calcul+1;
								}
							}
						}
						else if(x>xd)
						{
							depart=x-1;
							for (i=depart; i>xd; i--)
							{
								verif2=(strcmp(plateau[i][yd].nom_piece,"  ")==0);
								if(!verif2)
								{
									calcul=calcul+1;
								}
							}
						}
					}
					else if(x==xd)
					{
						if (y<yd)
						{
							depart=y+1;
							for (i=depart; i<yd; i++)
							{
								verif2=(strcmp(plateau[xd][i].nom_piece,"  ")==0);
								if(!verif2)
								{
									calcul=calcul+1;
								}
							}
						}
						else if(y>yd)
						{
							depart=y-1;
							for (i=depart; i>yd; i--)
							{
								verif2=(strcmp(plateau[xd][i].nom_piece,"  ")==0);
								if(!verif2)
								{
									calcul=calcul+1;
								}
							}
						}
					}
					else if((x-xd==yd-y)||(x-xd==y-yd))
					{
						if (x>xd)
						{
							t=x-xd;
						}
						else
						{
							t=xd-x;
						}
						for (i=1; i<t; i++)
						{
							if (x<xd && y>yd)
							{
								e=xd-i;
								f=yd+i;
							}
							else if(x<xd && y<yd)
							{
								e=xd-i;
								f=yd-i;
							}
							else if (x>xd && y>yd)
							{
								e=xd+i;
								f=yd+i;
							}
							else if(x>xd && y<yd)
							{
								e=xd+i;
								f=yd-i;
							}
							verif2=(strcmp(plateau[e][f].nom_piece,"  ")==0);
							if(!verif2)
							{
								calcul=calcul+1;
							}
						}
					}
					if (calcul==0)
					{
						droits=1;
						return droits;
					}
				}
			}
		}
		else if(piece[0]==84)				/*tour*/
		{
			if(piece[1]==98)			/*blanc*/
			{
				if (plateau[x][y].nom_piece[1]==110)
				{
					if(y==yd)
					{
						if (x<xd)
						{
							depart=x+1;
							for (i=depart; i<xd; i++)
							{
								verif2=(strcmp(plateau[i][yd].nom_piece,"  ")==0);
								if(!verif2)
								{
									calcul=calcul+1;
								}
							}
						}
						else if(x>xd)
						{
							depart=x-1;
							for (i=depart; i>xd; i--)
							{
								verif2=(strcmp(plateau[i][yd].nom_piece,"  ")==0);
								if(!verif2)
								{
									calcul=calcul+1;
								}
							}
						}
						if (calcul==0)
						{
							droits=1;
							return droits;
						}
					}
					else if(x==xd)
					{
						if (y<yd)
						{
							depart=y+1;
							for (i=depart; i<yd; i++)
							{
								verif2=(strcmp(plateau[xd][i].nom_piece,"  ")==0);
								if(!verif2)
								{
									calcul=calcul+1;
								}
							}
						}
						else if(y>yd)
						{
							depart=y-1;
							for (i=depart; i>yd; i--)
							{
								verif2=(strcmp(plateau[xd][i].nom_piece,"  ")==0);
								if(!verif2)
								{
									calcul=calcul+1;
								}
							}
						}
					}
					if (calcul==0)
					{
						if (x==xd || y==yd)
						{
							droits=1;
							return droits;
						}
					}
				}
			}
			else if(piece[1]==110)
			{
				if (plateau[x][y].nom_piece[1]==98)
				{
					if(y==yd)
					{
						if (x<xd)
						{
							depart=x+1;
							for (i=depart; i<xd; i++)
							{
								verif2=(strcmp(plateau[i][yd].nom_piece,"  ")==0);
								if(!verif2)
								{
									calcul=calcul+1;
								}
							}
						}
						else if(x>xd)
						{
							depart=x-1;
							for (i=depart; i>xd; i--)
							{
								verif2=(strcmp(plateau[i][yd].nom_piece,"  ")==0);
								if(!verif2)
								{
									calcul=calcul+1;
								}
							}
						}
					}
					else if(x==xd)
					{
						if (y<yd)
						{
							depart=y+1;
							for (i=depart; i<yd; i++)
							{
								verif2=(strcmp(plateau[xd][i].nom_piece,"  ")==0);
								if(!verif2)
								{
									calcul=calcul+1;
								}
							}
						}
						else if(y>yd)
						{
							depart=x-1;
							for (i=depart; i>yd; i--)
							{
								verif2=(strcmp(plateau[xd][i].nom_piece,"  ")==0);
								if(!verif2)
								{
									calcul=calcul+1;
								}
							}
						}
					}
					if (calcul==0)
					{
						if (x==xd || y==yd)
						{
							droits=1;
							return droits;
						}
					}
				}
			}
		}
		else if(piece[0]==67)				/*cavalier*/
		{
			if(piece[1]==98)			/*blanc*/
			{
				if (plateau[x][y].nom_piece[1]==110)
				{
					if (((xd-x==2) && (yd-y==1)) || ((xd-x==2) && (y-yd==1)) || ((x-xd==2) 
&& (yd-y==1)) || ((x-xd==2) && (y-yd==1))
			|| ((xd-x==1) && (yd-y==2)) || ((xd-x==1) && (y-yd==2)) || ((x-xd==1) && 
(yd-y==2)) || ((x-xd==1) && (y-yd==2)))	/*noir*/
					{
						droits=1;
						return droits;
					}
				}
			}
			else if(piece[1]==110)			/*noir*/
			{
				if (plateau[x][y].nom_piece[1]==98)
				{
					if (((xd-x==2) && (yd-y==1)) || ((xd-x==2) && (y-yd==1)) || ((x-xd==2) 
&& (yd-y==1)) || ((x-xd==2) && (y-yd==1))
			|| ((xd-x==1) && (yd-y==2)) || ((xd-x==1) && (y-yd==2)) || ((x-xd==1) && 
(yd-y==2)) || ((x-xd==1) && (y-yd==2)))	/*noir*/
					{
						droits=1;
						return droits;
					}
				}
			}
		}
		else if(piece[0]==70)				/*fou*/
		{
			if(piece[1]==98)			/*blanc*/
			{
				if (plateau[x][y].nom_piece[1]==110)
				{
					if (x>xd)
					{
						t=x-xd;
					}
					else
					{
						t=xd-x;
					}
					for (i=1; i<t; i++)
					{
						if (x<xd && y>yd)
						{
							e=xd-i;
							f=yd+i;
						}
						else if(x<xd && y<yd)
						{
							e=xd-i;
							f=yd-i;
						}
						else if (x>xd && y>yd)
						{
							e=xd+i;
							f=yd+i;
						}
						else if(x>xd && y<yd)
						{
							e=xd+i;
							f=yd-i;
						}
						verif2=(strcmp(plateau[e][f].nom_piece,"  ")==0);
						if(!verif2)
						{
							calcul=calcul+1;
						}
					}
					if (calcul==0)
					{
						if((x-xd==yd-y)||(x-xd==y-yd))
						{
							droits=1;
							return droits;
						}
					}
				}
			}
			else if(piece[1]==110)			/*noir*/
			{
				if (plateau[x][y].nom_piece[1]==98)
				{
					if (x>xd)
					{
						t=x-xd;
					}
					else
					{
						t=xd-x;
					}
					for (i=1; i<t; i++)
					{
						if (x<xd && y>yd)
						{
							e=xd-i;
							f=yd+i;
						}
						else if(x<xd && y<yd)
						{
							e=xd-i;
							f=yd-i;
						}
						else if (x>xd && y>yd)
						{
							e=xd+i;
							f=yd+i;
						}
						else if(x>xd && y<yd)
						{
							e=xd+i;
							f=yd-i;
						}
						printf("%d",i);
						verif2=(strcmp(plateau[e][f].nom_piece,"  ")==0);
						printf("%d",verif2);
						if(!verif2)
						{
							calcul=calcul+1;
							printf("%d",calcul);
						}
					}
					if (calcul==0)
					{
						if((x-xd==yd-y)||(x-xd==y-yd))
						{
							droits=1;
							return droits;
						}
					}
				}
			}
		}
	}
}

/*------------------------------------------------*/

int echecnoir()
{
int i, e, f, a, b, calcul, depart, echec=0, xroi, yroi,comp1, comp2;

	for (a=0;a<8;a++)
	{
		for (b=0;b<8;b++)
		{
			if (plateau[a][b].nom_piece[0]==82)
			{
				if (plateau[a][b].nom_piece[1]==98)
				{
					xroi=a;
					yroi=b;
					break;
				}
			}
		}
	}

	printf("Le roi blanc est en(%d, %d)\n", xroi, yroi);

	e=xroi+1;
	f=yroi+1;
	comp1=(strcmp(plateau[e][f].nom_piece,"pn")==0);
	if (comp1)
	{
		echec=1;
		printf("Un echec detecte par un pion noir...\n");
	}
	e=xroi+1;
	f=yroi-1;
	comp1=(strcmp(plateau[e][f].nom_piece,"pn")==0);
	if (comp1)
	{
		echec=1;
		printf("Un echec detecte par un pion noir...\n");
	}
	e=xroi+1;
	f=yroi+2;
	comp1=(strcmp(plateau[e][f].nom_piece,"Cn")==0);
	if (comp1)
	{
		echec=1;
		printf("Un echec detecte par un cavalier noir...\n");
	}
	e=xroi+1;
	f=yroi-2;
	comp1=(strcmp(plateau[e][f].nom_piece,"Cn")==0);
	if (comp1)
	{
		echec=1;
		printf("Un echec detecte par un cavalier noir...\n");
	}
	e=xroi-1;
	f=yroi+2;
	comp1=(strcmp(plateau[e][f].nom_piece,"Cn")==0);
	if (comp1)
	{
		echec=1;
		printf("Un echec detecte par un cavalier noir...\n");
	}
	e=xroi-1;
	f=yroi-2;
	comp1=(strcmp(plateau[e][f].nom_piece,"Cn")==0);
	if (comp1)
	{
		echec=1;
		printf("Un echec detecte par un cavalier noir...\n");
	}
	e=xroi+2;
	f=yroi+1;
	comp1=(strcmp(plateau[e][f].nom_piece,"Cn")==0);
	if (comp1)
	{
		echec=1;
		printf("Un echec detecte par un cavalier noir...\n");
	}
	e=xroi+2;
	f=yroi-1;
	comp1=(strcmp(plateau[e][f].nom_piece,"Cn")==0);
	if (comp1)
	{
		echec=1;
		printf("Un echec detecte par un cavalier noir...\n");
	}
	e=xroi-2;
	f=yroi+1;
	comp1=(strcmp(plateau[e][f].nom_piece,"Cn")==0);
	if (comp1)
	{
		echec=1;
		printf("Un echec detecte par un cavalier noir...\n");
	}
	e=xroi-2;
	f=yroi-1;
	comp1=(strcmp(plateau[e][f].nom_piece,"Cn")==0);
	if (comp1)
	{
		echec=1;
		printf("Un echec detecte par un cavalier noir...\n");
	}
	e=xroi-1;
	f=yroi-1;
	comp1=(strcmp(plateau[e][f].nom_piece,"Rn")==0);
	if (comp1)
	{
		echec=1;
		printf("Vos deux rois seraient colles...\n");
	}
	e=xroi-1;
	f=yroi+1;
	comp1=(strcmp(plateau[e][f].nom_piece,"Rn")==0);
	if (comp1)
	{
		echec=1;
		printf("Vos deux rois seraient colles...\n");
	}
	e=xroi-1;
	f=yroi;
	comp1=(strcmp(plateau[e][f].nom_piece,"Rn")==0);
	if (comp1)
	{
		echec=1;
		printf("Vos deux rois seraient colles...\n");
	}
	e=xroi+1;
	f=yroi;
	comp1=(strcmp(plateau[e][f].nom_piece,"Rn")==0);
	if (comp1)
	{
		echec=1;
		printf("Vos deux rois seraient colles...\n");
	}
	e=xroi+1;
	f=yroi+1;
	comp1=(strcmp(plateau[e][f].nom_piece,"Rn")==0);
	if (comp1)
	{
		echec=1;
		printf("Vos deux rois seraient colles...\n");
	}
	e=xroi+1;
	f=yroi-1;
	comp1=(strcmp(plateau[e][f].nom_piece,"Rn")==0);
	if (comp1)
	{
		echec=1;
		printf("Vos deux rois seraient colles...\n");
	}
	e=xroi;
	f=yroi+1;
	comp1=(strcmp(plateau[e][f].nom_piece,"Rn")==0);
	if (comp1)
	{
		echec=1;
		printf("Vos deux rois seraient colles...\n");
	}
	e=xroi;
	f=yroi-1;
	comp1=(strcmp(plateau[e][f].nom_piece,"Rn")==0);
	if (comp1)
	{
		echec=1;
		printf("Vos deux rois seraient colles...\n");
	}
	e=xroi-1;
	f=yroi;
	comp1=(strcmp(plateau[e][f].nom_piece,"  ")==0);
	comp2=(strcmp(plateau[e][f].nom_piece,"Tn")==0);
	if (comp2)
	{
		echec=1;
		printf("Un echec detecte par une tour noire...\n");
	}
	while (e>-1 && comp1)
	{
		e--;
		comp1=(strcmp(plateau[e][f].nom_piece,"  ")==0);
		comp2=(strcmp(plateau[e][f].nom_piece,"Tn")==0);
		if (comp2)
		{
			echec=1;
			printf("Un echec detecte par une tour noire...\n");
		}
	}
	e=xroi;
	f=yroi-1;
	comp1=(strcmp(plateau[e][f].nom_piece,"  ")==0);
	comp2=(strcmp(plateau[e][f].nom_piece,"Tn")==0);
	if (comp2)
	{
		echec=1;
		printf("Un echec detecte par une tour noire...\n");
	}
	while (f>-1 && comp1)
	{
		f--;
		comp1=(strcmp(plateau[e][f].nom_piece,"  ")==0);
		comp2=(strcmp(plateau[e][f].nom_piece,"Tn")==0);
		if (comp2)
		{
			echec=1;
			printf("Un echec detecte par une tour noire...\n");
		}
	}
	e=xroi+1;
	f=yroi;
	comp1=(strcmp(plateau[e][f].nom_piece,"  ")==0);
	comp2=(strcmp(plateau[e][f].nom_piece,"Tn")==0);
	if (comp2)
	{
		echec=1;
		printf("Un echec detecte par une tour noire...\n");
	}
	while (e<8 && comp1)
	{
		e++;
		comp1=(strcmp(plateau[e][f].nom_piece,"  ")==0);
		comp2=(strcmp(plateau[e][f].nom_piece,"Tn")==0);
		if (comp2)
		{
			echec=1;
			printf("Un echec detecte par une tour noire...\n");
		}
	}
	e=xroi;
	f=yroi+1;
	comp1=(strcmp(plateau[e][f].nom_piece,"  ")==0);
	comp2=(strcmp(plateau[e][f].nom_piece,"Tn")==0);
	if (comp2)
	{
		echec=1;
		printf("Un echec detecte par une tour noire...\n");
	}
	while (f<8 && comp1)
	{
		f++;
		comp1=(strcmp(plateau[e][f].nom_piece,"  ")==0);
		comp2=(strcmp(plateau[e][f].nom_piece,"Tn")==0);
		if (comp2)
		{
			echec=1;
			printf("Un echec detecte par une tour noire...\n");
		}
	}
	e=xroi-1;
	f=yroi;
	comp1=(strcmp(plateau[e][f].nom_piece,"  ")==0);
	comp2=(strcmp(plateau[e][f].nom_piece,"Dn")==0);
	if (comp2)
	{
		echec=1;
		printf("Un echec detecte par une dame noire...\n");
	}
	while (e>-1 && comp1)
	{
		e--;
		comp1=(strcmp(plateau[e][f].nom_piece,"  ")==0);
		comp2=(strcmp(plateau[e][f].nom_piece,"Dn")==0);
		if (comp2)
		{
			echec=1;
			printf("Un echec detecte par une dame noire...\n");
		}
	}
	e=xroi;
	f=yroi-1;
	comp1=(strcmp(plateau[e][f].nom_piece,"  ")==0);
	comp2=(strcmp(plateau[e][f].nom_piece,"Dn")==0);
	if (comp2)
	{
		echec=1;
		printf("Un echec detecte par une dame noire...\n");
	}
	while (f>-1 && comp1)
	{
		f--;
		comp1=(strcmp(plateau[e][f].nom_piece,"  ")==0);
		comp2=(strcmp(plateau[e][f].nom_piece,"Dn")==0);
		if (comp2)
		{
			echec=1;
			printf("Un echec detecte par une dame noire...\n");
		}
	}
	e=xroi+1;
	f=yroi;
	comp1=(strcmp(plateau[e][f].nom_piece,"  ")==0);
	comp2=(strcmp(plateau[e][f].nom_piece,"Dn")==0);
	if (comp2)
	{
		echec=1;
		printf("Un echec detecte par une dame noire...\n");
	}
	while (e<8 && comp1)
	{
		e++;
		comp1=(strcmp(plateau[e][f].nom_piece,"  ")==0);
		comp2=(strcmp(plateau[e][f].nom_piece,"Dn")==0);
		if (comp2)
		{
			echec=1;
			printf("Un echec detecte par une dame noire...\n");
		}
	}
	e=xroi;
	f=yroi+1;
	comp1=(strcmp(plateau[e][f].nom_piece,"  ")==0);
	comp2=(strcmp(plateau[e][f].nom_piece,"Dn")==0);
	if (comp2)
	{
		echec=1;
		printf("Un echec detecte par une dame noire...\n");
	}
	while (f<8 && comp1)
	{
		f++;
		comp1=(strcmp(plateau[e][f].nom_piece,"  ")==0);
		comp2=(strcmp(plateau[e][f].nom_piece,"Dn")==0);
		if (comp2)
		{
			echec=1;
			printf("Un echec detecte par une dame noire...\n");
		}
	}
	e=xroi+1;
	f=yroi+1;
	comp1=(strcmp(plateau[e][f].nom_piece,"  ")==0);
	comp2=(strcmp(plateau[e][f].nom_piece,"Dn")==0);
	if (comp2)
	{
		echec=1;
		printf("Un echec detecte par une dame noire...\n");
	}
	while (e<8 && f<8 && comp1)
	{
		e++;
		f++;
		comp1=(strcmp(plateau[e][f].nom_piece,"  ")==0);
		comp2=(strcmp(plateau[e][f].nom_piece,"Dn")==0);
		if (comp2)
		{
			echec=1;
			printf("Un echec detecte par une dame noire...\n");
		}
	}
	e=xroi+1;
	f=yroi-1;
	comp1=(strcmp(plateau[e][f].nom_piece,"  ")==0);
	comp2=(strcmp(plateau[e][f].nom_piece,"Dn")==0);
	if (comp2)
	{
		echec=1;
		printf("Un echec detecte par une dame noire...\n");
	}
	while (e<8 && f>-1 && comp1)
	{
		e++;
		f--;
		comp1=(strcmp(plateau[e][f].nom_piece,"  ")==0);
		comp2=(strcmp(plateau[e][f].nom_piece,"Dn")==0);
		if (comp2){
			echec=1;
			printf("Un echec detecte par une dame noire...\n");
		}
	}
	e=xroi-1;
	f=yroi+1;
	comp1=(strcmp(plateau[e][f].nom_piece,"  ")==0);
	comp2=(strcmp(plateau[e][f].nom_piece,"Dn")==0);
	if (comp2)
	{
		echec=1;
		printf("Un echec detecte par une dame noire...\n");
	}
	while (e>-1 && f<8 && comp1)
	{
		e--;
		f++;
		comp1=(strcmp(plateau[e][f].nom_piece,"  ")==0);
		comp2=(strcmp(plateau[e][f].nom_piece,"Dn")==0);
		if (comp2){
			echec=1;
			printf("Un echec detecte par une dame noire...\n");
		}
	}
	e=xroi-1;
	f=yroi-1;
	comp1=(strcmp(plateau[e][f].nom_piece,"  ")==0);
	comp2=(strcmp(plateau[e][f].nom_piece,"Dn")==0);
	if (comp2)
	{
		echec=1;
		printf("Un echec detecte par une dame noire...\n");
	}
	while (e>-1 && f>-1 && comp1)
	{
		e--;
		f--;
		comp1=(strcmp(plateau[e][f].nom_piece,"  ")==0);
		comp2=(strcmp(plateau[e][f].nom_piece,"Dn")==0);
		if (comp2){
			echec=1;
			printf("Un echec detecte par une dame noire...\n");
		}
	}
	e=xroi+1;
	f=yroi+1;
	comp1=(strcmp(plateau[e][f].nom_piece,"  ")==0);
	comp2=(strcmp(plateau[e][f].nom_piece,"Fn")==0);
	if (comp2)
	{
		echec=1;
		printf("Un echec detecte par un fou noir...\n");
	}
	while (e<8 && f<8 && comp1)
	{
		e++;
		f++;
		comp1=(strcmp(plateau[e][f].nom_piece,"  ")==0);
		comp2=(strcmp(plateau[e][f].nom_piece,"Fn")==0);
		if (comp2)
		{
			echec=1;
			printf("Un echec detecte par un fou noir...\n");
		}
	}
	e=xroi+1;
	f=yroi-1;
	comp1=(strcmp(plateau[e][f].nom_piece,"  ")==0);
	comp2=(strcmp(plateau[e][f].nom_piece,"Fn")==0);
	if (comp2)
	{
		echec=1;
		printf("Un echec detecte par un fou noir...\n");
	}
	while (e<8 && f>-1 && comp1)
	{
		e++;
		f--;
		comp1=(strcmp(plateau[e][f].nom_piece,"  ")==0);
		comp2=(strcmp(plateau[e][f].nom_piece,"Fn")==0);
		if (comp2)
		{
			echec=1;
			printf("Un echec detecte par un fou noir...\n");
		}
	}
	e=xroi-1;
	f=yroi+1;
	comp1=(strcmp(plateau[e][f].nom_piece,"  ")==0);
	comp2=(strcmp(plateau[e][f].nom_piece,"Fn")==0);
	if (comp2)
	{
		echec=1;
		printf("Un echec detecte par un fou noir...\n");
	}
	while (e>-1 && f<8 &&  comp1)
	{
		e--;
		f++;
		comp1=(strcmp(plateau[e][f].nom_piece,"  ")==0);
		comp2=(strcmp(plateau[e][f].nom_piece,"Fn")==0);
		if (comp2)
		{
			echec=1;
			printf("Un echec detecte par un fou noir...\n");
		}
	}
	e=xroi-1;
	f=yroi-1;
	comp1=(strcmp(plateau[e][f].nom_piece,"  ")==0);
	comp2=(strcmp(plateau[e][f].nom_piece,"Fn")==0);
	if (comp2)
	{
		echec=1;
		printf("Un echec detecte par un fou noir...\n");
	}
	while (e>-1 && f>-1 &&  comp1)
	{
		e--;
		f--;
		comp1=(strcmp(plateau[e][f].nom_piece,"  ")==0);
		comp2=(strcmp(plateau[e][f].nom_piece,"Fn")==0);
		if (comp2)
		{
			echec=1;
			printf("Un echec detecte par un fou noir...\n");
		}
	}
	return echec;
}

/*------------------------------------------------*/

int echecblanc()
{
int i, e, f, a, b, calcul, depart, echec=0, xroi, yroi, comp1, comp2;

	for (a=0;a<8;a++)
	{
		for (b=0;b<8;b++)
		{
			if (plateau[a][b].nom_piece[0]==82)
			{
				if (plateau[a][b].nom_piece[1]==110)
				{
					xroi=a;
					yroi=b;
					break;
				}
			}
		}
	}
	printf("Le roi noir est en(%d, %d)\n", xroi, yroi);
	e=xroi-1;
	f=yroi+1;
	comp1=(strcmp(plateau[e][f].nom_piece,"pb")==0);
	if (e>0 && f<7 && comp1)
	{
		echec=1;
		printf("Un echec detecte par un pion blanc...\n");
	}
	e=xroi-1;
	f=yroi-1;
	comp1=(strcmp(plateau[e][f].nom_piece,"pb")==0);
	if (e>0 && f>0 && comp1)
	{
		echec=1;
		printf("Un echec detecte par un pion blanc...\n");
	}
	e=xroi+1;
	f=yroi+2;
	comp1=(strcmp(plateau[e][f].nom_piece,"Cb")==0);
	if (e<7 && f<6 && comp1)
	{
		echec=1;
		printf("Un echec detecte par un cavalier blanc...\n");
	}
	e=xroi+1;
	f=yroi-2;
	comp1=(strcmp(plateau[e][f].nom_piece,"Cb")==0);
	if (e<7 && f>1 && comp1)
	{
		echec=1;
		printf("Un echec detecte par un cavalier blanc...\n");
	}
	e=xroi-1;
	f=yroi+2;
	comp1=(strcmp(plateau[e][f].nom_piece,"Cb")==0);
	if (e>0 && f<6 && comp1)
	{
		echec=1;
		printf("Un echec detecte par un cavalier blanc...\n");
	}
	e=xroi-1;
	f=yroi-2;
	comp1=(strcmp(plateau[e][f].nom_piece,"Cb")==0);
	if (e>0 && f>1 && comp1)
	{
		echec=1;
		printf("Un echec detecte par un cavalier blanc...\n");
	}
	e=xroi+2;
	f=yroi+1;
	comp1=(strcmp(plateau[e][f].nom_piece,"Cb")==0);
	if (e<6 && f<7 && comp1)
	{
		echec=1;
		printf("Un echec detecte par un cavalier blanc...\n");
	}
	e=xroi+2;
	f=yroi-1;
	comp1=(strcmp(plateau[e][f].nom_piece,"Cb")==0);
	if (e<6 && f>0 && comp1)
	{
		echec=1;
		printf("Un echec detecte par un cavalier blanc...\n");
	}
	e=xroi-2;
	f=yroi+1;
	comp1=(strcmp(plateau[e][f].nom_piece,"Cb")==0);
	if (e>1 && f<7 && comp1)
	{
		echec=1;
		printf("Un echec detecte par un cavalier blanc...\n");
	}
	e=xroi-2;
	f=yroi-1;
	comp1=(strcmp(plateau[e][f].nom_piece,"Cb")==0);
	if (e>1 && f>0 && comp1)
	{
		echec=1;
		printf("Un echec detecte par un cavalier blanc...\n");
	}
	e=xroi-1;
	f=yroi-1;
	comp1=(strcmp(plateau[e][f].nom_piece,"Rn")==0);
	if (comp1)
	{
		echec=1;
		printf("Vos deux rois seraient colles...\n");
	}
	e=xroi-1;
	f=yroi+1;
	comp1=(strcmp(plateau[e][f].nom_piece,"Rn")==0);
	if (comp1)
	{
		echec=1;
		printf("Vos deux rois seraient colles...\n");
	}
	e=xroi-1;
	f=yroi;
	comp1=(strcmp(plateau[e][f].nom_piece,"Rn")==0);
	if (comp1)
	{
		echec=1;
		printf("Vos deux rois seraient colles...\n");
	}
	e=xroi+1;
	f=yroi;
	comp1=(strcmp(plateau[e][f].nom_piece,"Rn")==0);
	if (comp1)
	{
		echec=1;
		printf("Vos deux rois seraient colles...\n");
	}
	e=xroi+1;
	f=yroi+1;
	comp1=(strcmp(plateau[e][f].nom_piece,"Rn")==0);
	if (comp1)
	{
		echec=1;
		printf("Vos deux rois seraient colles...\n");
	}
	e=xroi+1;
	f=yroi-1;
	comp1=(strcmp(plateau[e][f].nom_piece,"Rn")==0);
	if (comp1)
	{
		echec=1;
		printf("Vos deux rois seraient colles...\n");
	}
	e=xroi;
	f=yroi+1;
	comp1=(strcmp(plateau[e][f].nom_piece,"Rn")==0);
	if (comp1)
	{
		echec=1;
		printf("Vos deux rois seraient colles...\n");
	}
	e=xroi;
	f=yroi-1;
	comp1=(strcmp(plateau[e][f].nom_piece,"Rn")==0);
	if (comp1)
	{
		echec=1;
		printf("Vos deux rois seraient colles...\n");
	}
	e=xroi-1;
	f=yroi;
	comp1=(strcmp(plateau[e][f].nom_piece,"  ")==0);
	comp2=(strcmp(plateau[e][f].nom_piece,"Tb")==0);
	if (comp2)
	{
		echec=1;
		printf("Un echec detecte par une tour blanche...\n");
	}
	while (e>-1 && comp1)
	{
		e--;
		comp1=(strcmp(plateau[e][f].nom_piece,"  ")==0);
		comp2=(strcmp(plateau[e][f].nom_piece,"Tb")==0);
		if (comp2)
		{
			echec=1;
			printf("Un echec detecte par une tour blanche...\n");
		}
	}
	e=xroi;
	f=yroi-1;
	comp1=(strcmp(plateau[e][f].nom_piece,"  ")==0);
	comp2=(strcmp(plateau[e][f].nom_piece,"Tb")==0);
	if (comp2)
	{
		echec=1;
		printf("Un echec detecte par une tour blanche...\n");
	}
	while (f>-1 && comp1)
	{
		f--;
		comp1=(strcmp(plateau[e][f].nom_piece,"  ")==0);
		comp2=(strcmp(plateau[e][f].nom_piece,"Tb")==0);
		if (comp2)
		{
			echec=1;
			printf("Un echec detecte par une tour blanche...\n");
		}
	}
	e=xroi+1;
	f=yroi;
	comp1=(strcmp(plateau[e][f].nom_piece,"  ")==0);
	comp2=(strcmp(plateau[e][f].nom_piece,"Tb")==0);
	if (comp2)
	{
		echec=1;
		printf("Un echec detecte par une tour blanche...\n");
	}
	while (e<8 && comp1)
	{
		e++;
		comp1=(strcmp(plateau[e][f].nom_piece,"  ")==0);
		comp2=(strcmp(plateau[e][f].nom_piece,"Tb")==0);
		if (comp2)
		{
			echec=1;
			printf("Un echec detecte par une tour blanche...\n");
		}
	}
	e=xroi;
	f=yroi+1;
	comp1=(strcmp(plateau[e][f].nom_piece,"  ")==0);
	comp2=(strcmp(plateau[e][f].nom_piece,"Tb")==0);
	if (comp2)
	{
		echec=1;
		printf("Un echec detecte par une tour blanche...\n");
	}
	while (f<8 && comp1)
	{
		f++;
		comp1=(strcmp(plateau[e][f].nom_piece,"  ")==0);
		comp2=(strcmp(plateau[e][f].nom_piece,"Tb")==0);
		if (comp2)
		{
			echec=1;
			printf("Un echec detecte par une tour blanche...\n");
		}
	}
	e=xroi-1;
	f=yroi;
	comp1=(strcmp(plateau[e][f].nom_piece,"  ")==0);
	comp2=(strcmp(plateau[e][f].nom_piece,"Db")==0);
	if (comp2)
	{
		echec=1;
		printf("Un echec detecte par une dame blanche...\n");
	}
	while (e>-1 && comp1)
	{
		e--;
		comp1=(strcmp(plateau[e][f].nom_piece,"  ")==0);
		comp2=(strcmp(plateau[e][f].nom_piece,"Db")==0);
		if (comp2)
		{
			echec=1;
			printf("Un echec detecte par une dame blanche...\n");
		}
	}
	e=xroi;
	f=yroi-1;
	comp1=(strcmp(plateau[e][f].nom_piece,"  ")==0);
	comp2=(strcmp(plateau[e][f].nom_piece,"Db")==0);
	if (comp2)
	{
		echec=1;
		printf("Un echec detecte par une dame blanche...\n");
	}
	while (f>-1 && comp1)
	{
		f--;
		comp1=(strcmp(plateau[e][f].nom_piece,"  ")==0);
		comp2=(strcmp(plateau[e][f].nom_piece,"Db")==0);
		if (comp2)
		{
			echec=1;
			printf("Un echec detecte par une dame blanche...\n");
		}
	}
	e=xroi+1;
	f=yroi;
	comp1=(strcmp(plateau[e][f].nom_piece,"  ")==0);
	comp2=(strcmp(plateau[e][f].nom_piece,"Db")==0);
	if (comp2)
	{
		echec=1;
		printf("Un echec detecte par une dame blanche...\n");
	}
	while (e<8 && comp1)
	{
		e++;
		comp1=(strcmp(plateau[e][f].nom_piece,"  ")==0);
		comp2=(strcmp(plateau[e][f].nom_piece,"Db")==0);
		if (comp2)
		{
			echec=1;
			printf("Un echec detecte par une dame blanche...\n");
		}
	}
	e=xroi;
	f=yroi+1;
	comp1=(strcmp(plateau[e][f].nom_piece,"  ")==0);
	comp2=(strcmp(plateau[e][f].nom_piece,"Db")==0);
	if (comp2)
	{
		echec=1;
		printf("Un echec detecte par une dame blanche...\n");
	}
	while (f<8 && comp1)
	{
		f++;
		comp1=(strcmp(plateau[e][f].nom_piece,"  ")==0);
		comp2=(strcmp(plateau[e][f].nom_piece,"Db")==0);
		if (comp2)
		{
			echec=1;
			printf("Un echec detecte par une dame blanche...\n");
		}
	}
	e=xroi+1;
	f=yroi+1;
	comp1=(strcmp(plateau[e][f].nom_piece,"  ")==0);
	comp2=(strcmp(plateau[e][f].nom_piece,"Db")==0);
	if (comp2)
	{
		echec=1;
		printf("Un echec detecte par une dame blanche...\n");
	}
	while (e<8 && f<8 && comp1)
	{
		e++;
		f++;
		comp1=(strcmp(plateau[e][f].nom_piece,"  ")==0);
		comp2=(strcmp(plateau[e][f].nom_piece,"Db")==0);
		if (comp2)
		{
			echec=1;
			printf("Un echec detecte par une dame blanche...\n");
		}
	}
	e=xroi+1;
	f=yroi-1;
	comp1=(strcmp(plateau[e][f].nom_piece,"  ")==0);
	comp2=(strcmp(plateau[e][f].nom_piece,"Db")==0);
	if (comp2)
	{
		echec=1;
		printf("Un echec detecte par une dame blanche...\n");
	}
	while (e<8 && f>-1 && comp1)
	{
		e++;
		f--;
		comp1=(strcmp(plateau[e][f].nom_piece,"  ")==0);
		comp2=(strcmp(plateau[e][f].nom_piece,"Db")==0);
		if (comp2){
			echec=1;
			printf("Un echec detecte par une dame blanche...\n");
		}
	}
	e=xroi-1;
	f=yroi+1;
	comp1=(strcmp(plateau[e][f].nom_piece,"  ")==0);
	comp2=(strcmp(plateau[e][f].nom_piece,"Db")==0);
	if (comp2)
	{
		echec=1;
		printf("Un echec detecte par une dame blanche...\n");
	}
	while (e>-1 && f<8 && comp1)
	{
		e--;
		f++;
		comp1=(strcmp(plateau[e][f].nom_piece,"  ")==0);
		comp2=(strcmp(plateau[e][f].nom_piece,"Db")==0);
		if (comp2){
			echec=1;
			printf("Un echec detecte par une dame blanche...\n");
		}
	}
	e=xroi-1;
	f=yroi-1;
	comp1=(strcmp(plateau[e][f].nom_piece,"  ")==0);
	comp2=(strcmp(plateau[e][f].nom_piece,"Db")==0);
	if (comp2)
	{
		echec=1;
		printf("Un echec detecte par une dame blanche...\n");
	}
	while (e>-1 && f>-1 && comp1)
	{
		e--;
		f--;
		comp1=(strcmp(plateau[e][f].nom_piece,"  ")==0);
		comp2=(strcmp(plateau[e][f].nom_piece,"Db")==0);
		if (comp2){
			echec=1;
			printf("Un echec detecte par une dame blanche...\n");
		}
	}
	e=xroi+1;
	f=yroi+1;
	comp1=(strcmp(plateau[e][f].nom_piece,"  ")==0);
	comp2=(strcmp(plateau[e][f].nom_piece,"Fb")==0);
	if (comp2)
	{
		echec=1;
		printf("Un echec detecte par un fou blanc...\n");
	}
	while (e<8 && f<8 && comp1)
	{
		e++;
		f++;
		comp1=(strcmp(plateau[e][f].nom_piece,"  ")==0);
		comp2=(strcmp(plateau[e][f].nom_piece,"Fb")==0);
		if (comp2)
		{
			echec=1;
			printf("Un echec detecte par un fou blanc...\n");
		}
	}
	e=xroi+1;
	f=yroi-1;
	comp1=(strcmp(plateau[e][f].nom_piece,"  ")==0);
	comp2=(strcmp(plateau[e][f].nom_piece,"Fb")==0);
	if (comp2)
	{
		echec=1;
		printf("Un echec detecte par un fou blanc...\n");
	}
	while (e<8 && f>-1 && comp1)
	{
		e++;
		f--;
		comp1=(strcmp(plateau[e][f].nom_piece,"  ")==0);
		comp2=(strcmp(plateau[e][f].nom_piece,"Fb")==0);
		if (comp2)
		{
			echec=1;
			printf("Un echec detecte par un fou blanc...\n");
		}
	}
	e=xroi-1;
	f=yroi+1;
	comp1=(strcmp(plateau[e][f].nom_piece,"  ")==0);
	comp2=(strcmp(plateau[e][f].nom_piece,"Fb")==0);
	if (comp2)
	{
		echec=1;
		printf("Un echec detecte par un fou blanc...\n");
	}
	while (e>-1 && f<8 &&  comp1)
	{
		e--;
		f++;
		comp1=(strcmp(plateau[e][f].nom_piece,"  ")==0);
		comp2=(strcmp(plateau[e][f].nom_piece,"Fb")==0);
		if (comp2)
		{
			echec=1;
			printf("Un echec detecte par un fou blanc...\n");
		}
	}
	e=xroi-1;
	f=yroi-1;
	comp1=(strcmp(plateau[e][f].nom_piece,"  ")==0);
	comp2=(strcmp(plateau[e][f].nom_piece,"Fb")==0);
	if (comp2)
	{
		echec=1;
		printf("Un echec detecte par un fou blanc...\n");
	}
	while (e>-1 && f>-1 &&  comp1)
	{
		e--;
		f--;
		comp1=(strcmp(plateau[e][f].nom_piece,"  ")==0);
		comp2=(strcmp(plateau[e][f].nom_piece,"Fb")==0);
		if (comp2)
		{
			echec=1;
			printf("Un echec detecte par un fou blanc...\n");
		}
	}
	return echec;
}
/*------------------------------------------------*/

void chargement()
{
int retour, a=0, b=0, test2, coul, test1;
char nomfichier[50], chargement[3], chargement2[2], menu[3];
FILE *fic;
	printf("Donnez le nom du fichier:\n");
	scanf("%s", nomfichier);

	fic=fopen(nomfichier,"r");
	if (fic==NULL)
	{
		printf("Probleme d acces fichier %s\n", nomfichier);
		test1=0;
		while(!test1)
		{
			printf("Appuyez sur \"R\" pour revenir au menu!\n");
			scanf("%s",menu);
			if (menu[0]==82)
			{
				test1=1;
			}
		}
		if (menu[0]==82)
		{
			main();
		}
	}
	else
	{
		for( a=0; a<8; a++)
		{
			for (b=0; b<8; b++)
			{
				retour=fscanf(fic,"%s", chargement);
				test2=strcmp(chargement, "00")==0;
				if (test2)
				{
					strcpy(chargement, "  ");
				}
				if(retour != EOF)
				{
					strcpy(plateau[a][b].nom_piece, chargement);
				}
			}
		}
	}
	retour=fscanf(fic,"%s", chargement2);
	fclose(fic);
	printf("Echiquier charge\n", nomfichier);
	coul=(strcmp(chargement2, "n")==0);
	if (! coul)
	{
		c=1;
	}
	else
	{
		c=0;
	}
	affichage();
	nouveaujeu();
}
/*------------------------------------------------*/
void sauvegarde()
{
int a, b, i=0, finligne=0, test1, test2, reste;
char couleur[2], menu[2], nomfichier[50];
FILE *fic;
	printf("Nom de fichier?(sans extension)");
	scanf("%s",nomfichier);
	reste=c%2;
	if (reste!=0)
	{
		strcpy(couleur, "n");
	}
	else
	{
		strcpy(couleur, "b");
	}
	fic=fopen(nomfichier, "w");
	for( a=0; a<8; a++)
	{
		for (b=0; b<8; b++)
		{
			finligne++;
			test1=strcmp(plateau[a][b].nom_piece, "  ")==0;
			if (test1)
			{
				strcpy(plateau[a][b].nom_piece, "00");
			}
			fprintf(fic,"%s\n", plateau[a][b].nom_piece);
			if (finligne%8==0)
			{
	 			fprintf(fic,"\n");
			}
	 	}
	}
  	fprintf(fic,"%s\n", couleur);
  	fclose (fic);
  	test2=0;
		while(!test2)
		{
			printf("Echiquier sauvegarde, appuyez sur \"R\" pour revenir au menu!\n");
			scanf("%s",menu);
			if (menu[0]==82)
			{
				test2=1;
			}
		}
  	if (menu[0]==82)
	{
		Option();
	}
}


