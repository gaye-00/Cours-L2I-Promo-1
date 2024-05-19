#include <windows.h> // pour SetConsoleOutputCP(UTF-8)
#include <iostream>

using namespace std;

//FILNPTUVWXYZ
char pent[12][5][5]=
{{
{0,1,0},//F
{1,1,1},
{0,0,1}},{

{1,1,1,1,1}},{//I

{1,1,1,1},
{1,0,0,0}},{//L

{1,1,1,0},
{0,0,1,1}},{//N

{1,1,1},
{1,1,0}},{//P

{1,1,1},//T
{0,1,0},
{0,1,0}},{

{1,1,1},//U
{1,0,1}},{

{1,1,1},//V
{1,0,0},
{1,0,0}},{

{1,0,0},//W
{1,1,0},
{0,1,1}},{

{0,1,0},//X
{1,1,1},
{0,1,0}},{

{1,1,1,1},//Y
{0,1,0,0}},{

{1,1,0},//Z
{0,1,0},
{0,1,1}}};

short len[]={120,15,120,120,120,60,60,60,60,15,120,60};
const char*LETTRES="FILNPTUVWXYZ";
const char*l=" FILNPTUVWXYZ.";
short w,h,p;
int n,maxi;
char tableau[30][30][30]; // le tableau � remplir
char pieces[12][120][3][5]; // 12 pi�ces, 120 positions maxi, 3 coordonn�es, 5 cases
bool notdeja[12];

void rotate90(char source[5][5],short&y,short&x)
{
	char destination[5][5];
	for (short i = 0; i < x; i++)
		for (short j = 0; j < y; j++)
			destination[i][j] = source[y - j - 1][i];
	short d=x;x=y;y=d;
	for (short j = 0; j < y; j++)
		for (short i = 0; i < x; i++)
			source[j][i] = destination[j][i];
}

void symetrie(char source[5][5],short y,short x)
{
	char destination[5][5];
	for (short j = 0; j < y; j++)
		for (short i = 0; i < x; i++)
			destination[j][i] = source[j][x-i-1];
	for (short j = 0; j < y; j++)
		for (short i = 0; i < x; i++)
			source[j][i] = destination[j][i];
}

class table
{
	short l,*a;
public:
	~table(){delete[]a;}
	table(const char*b)
	{
		l=0;
		a=new short[1000];
		for(short n=0;b&&b[n];n++)
		{
			if(b[n]>='0')
			{
				short r=-1;
				if(b[n]<='9') r=b[n]-'0';
				else if(b[n]>='A') r=b[n]-'A'+10;
				if((r>=0)&&(r<30))a[l++]=r;
			}
		}
	}
	table(short K,short J,short I,const char*b[])
	{
		l=0;
		a=new short[1000];
		for(short j=0;j<J;j++)
		{
			short u=0;
			for(short k=0;k<K;k++)
			{
				while(b[j][u]<=32)u++;
				for(short i=0;i<I;i++)
				{
					if(b[j][u++]=='.')
					{
						a[l++]=k;
						a[l++]=j;
						a[l++]=i;
					}
				}
			}
		}
	}
	short operator[](short n){return a[n];}
	short operator()(){return l;}
};

void piece(short&u,char U[120][3][5],char P[5][5],short m,short Z,short Y,short X)//retourne les 5 possibilités existantes d'une pièce
{
/*	if(Z==1)//vertical rotation axe x //pour ajuster len[...] si on veut
	{
		if(Y>p)return;
	}
	else
	{
		if(Y>h)return;//horizontal ou vertical rotation axe y
		if((Z==2)&&(X>p))return;//vertical rotation axe y
	}*/
	short A=-1;
	for(short y=0;y<Y;y++)
		for(short x=0;x<X;x++)
			if(P[y][x])
			{
				A++;
				switch(Z)
				{
					case 0: U[u][0][A]=0;
							U[u][1][A]=y;
							U[u][2][A]=x;break;//horizontal
					case 1: U[u][0][A]=y;
							U[u][1][A]=0;
							U[u][2][A]=x;break;//vertical rotation axe x
					case 2: U[u][0][A]=x;
							U[u][1][A]=y;
							U[u][2][A]=0;break;//vertical rotation axe y
				}
			}
	char a=U[u][0][m];
	char b=U[u][1][m];
	char c=U[u][2][m];
	for(short x=0;x<5;x++)
	{
		U[u][0][x]-=a;
		U[u][1][x]-=b;
		U[u][2][x]-=c;
	}
	u++;
}

void rotate(short&u,char U[120][3][5],char x[5][5],short rot,short &Y,short &X)
{
	for(short n=0;n<rot;n++)
	{
		for(short m=0;m<5;m++)
		{
			piece(u,U,x,m,2,Y,X);
			piece(u,U,x,m,1,Y,X);
			piece(u,U,x,m,0,Y,X);
		}
		rotate90(x,Y,X);
	}
}

void creerpiece(short n,short rot,bool sym,short Y,short X)//toutes les positions d'une pièce sauf le I
{
	short u=0;
	rotate(u,pieces[n],pent[n],rot,Y,X);
	if(sym)
	{
		symetrie(pent[n],Y,X);
		rotate(u,pieces[n],pent[n],rot,Y,X);
	}
}

void creerpieceI()//toutes les positions de la pièce I
{
	short u=0,Y=1,X=5;
	for(short n=0;n<2;n++)
	{
		for(short m=0;m<5;m++)
		{
			if(X<2)piece(u,pieces[1],pent[1],m,1,Y,X);
			piece(u,pieces[1],pent[1],m,0,Y,X);
		}
		rotate90(pent[1],Y,X);
	}
}

void getpieces()
{
	creerpiece(0,4,true,3,3);//F
	creerpieceI();//I
	creerpiece(2,4,true,2,4);//L
	creerpiece(3,4,true,2,4);//N
	creerpiece(4,4,true,2,3);//P
	creerpiece(5,4,false,3,3);//T
	creerpiece(6,4,false,2,3);//U
	creerpiece(7,4,false,3,3);//V
	creerpiece(8,4,false,3,3);//W
	creerpiece(9,1,false,3,3);//X
	creerpiece(10,4,true,2,4);//Y
	creerpiece(11,2,true,3,3);//Z
}

bool fini()
{
	for(short i=0;i<12;i++)
		if(notdeja[i])return false;
	return true;
}

void aff(short j)
{
	for(short k=0;k<p;k++)
	{
		for(short i=0;i<w;i++)
			cout<<l[(short)tableau[k][j][i]];
		cout<<" ";
	}
}

void affiche()
{
	cout << (++n) << endl;
	for(short j=0;j<h;j++)
	{
		aff(j);
		cout<<"\n";
	}
	cout<<"\n";
}

short indexOf(char c)
{
	for(short n=0;l[n];n++)
		if(l[n]==c)return n;
	return -1;
}

void init(short prof, short height, short width, const char*lettres, table&ote)
{
	p = prof;  if(p<1)p=1;if(p>30)p=30;
	h = height;if(h<1)h=1;if(h>30)h=30;
	w = width; if(w<1)w=1;if(w>30)w=30;
	for(short k=0;k<p;k++)
		for(short j=0;j<h;j++)
			for(short i=0;i<w;i++)
				tableau[k][j][i]=0;//cases vides
	for(short i=0;i<ote();i+=3)
		tableau[ote[i]][ote[i+1]][ote[i+2]] = 13;//1 à 12 pour les pièces et 13 impossible
	n = 0;
	for(short i=0;i<12;i++)notdeja[i]=false;
	for(short i=0;lettres[i];i++)
	{
		short c=indexOf(lettres[i]);
		if(c>=0)notdeja[c-1]=true;
	}
}

void solve()
{
	for(short i=0;i<w;i++)
	for(short j=0;j<h;j++)
	for(short k=0;k<p;k++)
	{
		if(!tableau[k][j][i])//si case vide
		{
			for(short P=0;P<12;P++)//pour toutes les pièces
			{
				if(notdeja[P])//non placées
				for(short C,S=0;S<len[P];S++)//toutes les configurations de cette pièce
				{
					for(C=0;C<5;C++)
					{
						short K=k+pieces[P][S][0][C];
						if((K<0)||(K>=p))break;//pour rester dans les clous
						short J=j+pieces[P][S][1][C];
						if((J<0)||(J>=h))break;
						short I=i+pieces[P][S][2][C];
						if((I<0)||(I>=w))break;
						if(tableau[K][J][I])break;//si différent de 0 on poursuit
					}
					if(C>=5)//les cases sont vides
					{
						for(C=0;C<5;C++)tableau[k+pieces[P][S][0][C]][j+pieces[P][S][1][C]][i+pieces[P][S][2][C]] = P+1;//on place la pièce p
						notdeja[P]=false;
						if(fini())affiche();//si plus de pièce, on affiche
						if(n<maxi)solve();//sinon on poursuit la recherche
						notdeja[P]=true;
						for(C=0;C<5;C++)tableau[k+pieces[P][S][0][C]][j+pieces[P][S][1][C]][i+pieces[P][S][2][C]] = 0;//on enlève la pièce p
					}
				}
			}
			return;
		}
	}
}

void pentomino(const char*s, short prof, short height, short width, const char lettres[]=LETTRES, table ote=table(NULL))
{
	if(s&&*s)cout<<s<<endl;
	init(prof, height, width, lettres, ote);
	solve();
	if(n<1)cout<<"Pas de solution\n"<<endl;
}

const char*F[]={//3*6*6
"11.... 11.... 11....",
"11.... 11.... 11....",
"111111 111111 111111",
"111111 111111 111111",
"..11.. ..11.. ..11..",
"..11.. ..11.. ..11.."};
//const char*I[]={//2*3*10 // 
const char*L[]={//3*4*8
"11111111 11111111 11111111",
"11111111 11111111 11111111",
"11...... 11...... 11......",
"11...... 11...... 11......"};
const char*N[]={//3*4*8
"111111.. 111111.. 111111..",
"111111.. 111111.. 111111..",
"....1111 ....1111 ....1111",
"....1111 ....1111 ....1111"};
const char*P[]={//3*4*6
"111111 111111 111111",
"111111 111111 111111",
"1111.. 1111.. 1111..",
"1111.. 1111.. 1111.."};
const char*T[]={//3*6*6
"111111111111111111",
"111111111111111111",
"..11....11....11..",
"..11....11....11..",
"..11....11....11..",
"..11....11....11.."};
const char*U[]={//3*4*6
"111111 111111 111111",
"111111 111111 111111",
"11..11 11..11 11..11",
"11..11 11..11 11..11"};
const char*V[]={//3*6*6
"111111111111111111",
"111111111111111111",
"11....11....11....",
"11....11....11....",
"11....11....11....",
"11....11....11...."};
const char*W[]={//3*6*6
"11....11....11....",
"11....11....11....",
"1111..1111..1111..",
"1111..1111..1111..",
"..1111..1111..1111",
"..1111..1111..1111"};
const char*X[]={//3*6*6
"..11....11....11..",
"..11....11....11..",
"111111111111111111",
"111111111111111111",
"..11....11....11..",
"..11....11....11.."};
const char*Y[]={//3*4*8
"11111111 11111111 11111111",
"11111111 11111111 11111111",
"..11.... ..11.... ..11....",
"..11.... ..11.... ..11...."};
const char*Z[]={//3*6*6
"11....11....11....",
"11....11....11....",
"111111111111111111",
"111111111111111111",
"....11....11....11",
"....11....11....11"};

int strtoint(char*s)
{
	int x=0;
	while(s&&*s)
		x=x*10-48+*s++;
	return x;
}

bool isnumber(char*s)
{
	s--;
	while(s&&*++s){if((*s<'0')||(*s>'9'))return false;}
	return true;
}

int help()
{
	cout<<"Programme.exe [-1] 0-29 0-29 ..."<<endl;
	cout<<"\t-0 => recherche de toutes les solutions"<<endl;
	cout<<"\t-1 => recherche d'une seule solution (par défaut)"<<endl;
	cout<<"\t-2 => recherche de deux solutions"<<endl;
	cout<<"\t...\n"<<endl;
cout<<
"\t 0 : 1*3*5  FPU\n"
"\t 1 : 1*4*5  NTVY\n"
"\t 2 : 1*4*10 FILPUWXZ\n"
"\t 3 : 1*5*5  FLPUX\n"
"\t 4 : 1*5*6  FNPUVX\n"
"\t 5 : 1*5*6  ILTWYZ\n"
"\t 6 : 1*5*7  INTVWYZ\n"
"\t 7 : 1*5*9  ILNTVWXYZ\n"
"\t 8 : 1*3*20\n"
"\t 9 : 1*4*15\n"
"\t10 : 1*5*12\n"
"\t11 : 1*6*10\n"
"\t12 : 2*3*10\n"
"\t13 : 2*5*6\n"
"\t14 : 3*4*5\n"
"\t15 : 3*6*6  F\n"
"\t16 : 2*3*10 I\n"
"\t17 : 3*4*8  L\n"
"\t18 : 3*4*8  N\n"
"\t19 : 3*4*6  P\n"
"\t20 : 3*6*6  T\n"
"\t21 : 3*4*6  U\n"
"\t22 : 3*6*6  V\n"
"\t23 : 3*6*6  W\n"
"\t24 : 3*6*6  X\n"
"\t25 : 3*4*8  Y\n"
"\t26 : 3*6*6  Z\n"
"\t27 : 1*8*8 1 ôte(033043034044)\n"
"\t28 : 1*8*8 2 ôte(000007070077)\n"
"\t29 : 3*5*5 ôte(000004040044022100104140144122200204240244222)\n"
"\nLes 12 lettres utilisées : FILNPTUVWXYZ"
	;return 0;
}

int main(int argc,char*arg[])
{
	SetConsoleOutputCP( 65001 );//console en utf-8
	if(argc<2)return help();
	maxi=1;
	getpieces();//� placer ailleurs pour optimiser les placements impossibles (voir void piece(...)
	for(int i=1;i<argc;i++)
	{
		char*s=arg[i];
		if(isnumber(s))
		{
			switch(strtoint(s))
			{
				case 0:pentomino("1*3*5 FPU",1,3,5,"FPU");break;
				case 1:pentomino("1*4*5 NTVY",1,4,5,"NTVY");break;
				case 2:pentomino("1*4*10 FILPUWXZ",1,4,10,"FILPUWXZ");break;
				case 3:pentomino("1*5*5 FLPUX",1,5,5,"FLPUX");break;
				case 4:pentomino("1*5*6 FNPUVX",1,5,6,"FNPUVX");break;
				case 5:pentomino("1*5*6 ILTWYZ",1,5,6,"ILTWYZ");break;
				case 6:pentomino("1*5*7 INTVWYZ",1,5,7,"INTVWYZ");break;
				case 7:pentomino("1*5*9 ILNTVWXYZ",1,5,9,"ILNTVWXYZ");break;
				case 8:pentomino("3*20",1,3,20);break;
				case 9:pentomino("4*15",1,4,15);break;
				case 10:pentomino("5*12",1,5,12);break;
				case 11:pentomino("6*10",1,6,10);break;
				case 12:pentomino("2*3*10",2,3,10);break;
				case 13:pentomino("2*5*6",2,5,6);break;
				case 14:pentomino("3*4*5",3,4,5);break;
				case 15:pentomino("3*6*6 F",3,6,6,LETTRES,table(3,6,6,F));break;
				case 16:pentomino("2*3*10 I",2,3,10);break;//I
				case 17:pentomino("3*4*8 L",3,4,8,LETTRES,table(3,4,8,L));break;
				case 18:pentomino("3*4*8 N",3,4,8,LETTRES,table(3,4,8,N));break;
				case 19:pentomino("3*4*6 P",3,4,6,LETTRES,table(3,4,6,P));break;
				case 20:pentomino("3*6*6 T",3,6,6,LETTRES,table(3,6,6,T));break;
				case 21:pentomino("3*4*6 U",3,4,6,LETTRES,table(3,4,6,U));break;
				case 22:pentomino("3*6*6 V",3,6,6,LETTRES,table(3,6,6,V));break;
				case 23:pentomino("3*6*6 W",3,6,6,LETTRES,table(3,6,6,W));break;
				case 24:pentomino("3*6*6 X",3,6,6,LETTRES,table(3,6,6,X));break;
				case 25:pentomino("3*4*8 Y",3,4,8,LETTRES,table(3,4,8,Y));break;
				case 26:pentomino("3*6*6 Z",3,6,6,LETTRES,table(3,6,6,Z));break;
				case 27:pentomino("8*8 1",1,8,8,LETTRES,table("033043034044"));break;
				case 28:pentomino("8*8 2",1,8,8,LETTRES,table("000007070077"));break;
				case 29:pentomino("3*5*5",3,5,5,LETTRES,table("000004040044022100104140144122200204240244222"));break;
				default:return help();
			}
		}
		else
		{
			if((*s=='-')&&(isnumber(s+1))){maxi=strtoint(s+1);if(maxi<1)maxi=INT_MAX;}
			else return help();
		}
	}
	return 0;
}
/*

Explication de la démarche, soit la pièce U notée en dessous 12345
On ne va conserver que les coordonnées des cases de la pièce
Commençons à placer la case (1) en (0;0)
On a donc la case (2) en (1;0), la case (3) en (2;0),
la case (4) en (0;1) et la case 5 en (2;1) :
   ^
  y|
   |
   | 
   4 5
   123---------->
             x

puis la case 2 en (0;0)
donc (1)(-1;0), (3)(1;0), (4)(-1;1) et (5)(1;1) :
   ^
  y|
   |
  4|5
  123----------->
             x

puis la case 3 en (0;0)
donc (1)(-2;0), (2)(-1;0), (4)(-2;1) et (5)(0;1) :
   ^
  y|
   |
 4 5
 123----------->
             x

puis la case 4 en (0;0)
donc (1)(0;-1), (2)(1;-1), (3)(2;-1) et (5)(2;0) :
   ^
  y|
   |
   |
   4 5--------->
   123       x

puis la case 5 en (0;0)
donc (1)(-2;-1), (2)(-1;-1), (3)(0;-1) et (4)(-2;0) :
   ^
  y|
   |
   |
 4 5----------->
 123         x

Il y a donc 5 possibilités pour une pièce d'occuper la position (0;0)

Maintenant, pour construire en 3D
il suffit de faire pivoter selon l'axe des y en faisant z=x, y=y, x=0
donc 5 positions de plus soit 10 en tout pour le moment  

puis de faire pivoter les 5 positions initiales selon l'axe des x
en faisant z=y, y=0, x=x
donc 5 positions de plus soit 15 en tout pour le moment  

On recommence le processus en faisont tourner la pièce U 3 fois
14       321       53
2        5 4        2
35                 41

On a donc maintenant 15 * 4 = 60 positions pour la pièce U
Cette pièce n'a pas de symétrie différente des positions vues
tout comme les pièces TVWZ
Mais pour la pièce F il y a une symétrie différente des rotations
 34   ->  43
12    -> 21
 5    ->  5
On recommence tout avec le symétrique de F
On aura donc 2 x 60 = 120 positions pour la pièce F
120 aussi pour les pièces LNPY 
Il reste donc 2 pièces I et X qui ont des rotations identiques
Horizontalement I n'a que 2 possibilités par rotation et n'a pas de
 symétrie différente
Horizontalement X n'a pas d'autres possibilité par rotation
 ni symétrie différente
On a donc pour la pièce X, 5 possibilités + 5 verticales(x) + 5 verticales(y) 
Soit 15 positions différentes
Pour la lettre I, on pourrait penser le double mais il n'y a que 2 possibilités par plan
mais elles ne sont pas toutes différentes, la moitié sont identiques  
donc on a aussi 15 possibilités pour la pièce I 

Récapitulatif :
      Pièces :   F   I    L    N    P   T   U   V   W   X    Y   Z
Possibilités : 120, 15, 120, 120, 120, 60, 60, 60, 60, 15, 120, 60
soit 930 possibilités avec 3 coordonnées i, j et k et 5 cases soit 2790 x 5 = 13950 
Ce qui n'est pas énorme pour une résolution en force brute

Pour la résolution, on passe en revue toutes les cases du tableau voulu :
      (Le mieux est de prendre x >= y >= z. le tableau doit avoir au moins 60 cases)
 pour tous les x
  pour tous les y
   pour tous les z
    si la case (x;y;z) est vide alors
     on essaye les 12 pièces
      puis toutes les positions d'une pièce
       puis les 5 cases de cette pièce, si ces cases sont vides, on peut placer cette pièce
        si elles sont toutes placées on a trouvé une solution
         on enlève la pièce pour poursuivre et trouver les autres solutions
poursuite par récurrence (pour tous les x...)

Les calculs sont de 60 cases x 13950 = 837000 nombres

*/
