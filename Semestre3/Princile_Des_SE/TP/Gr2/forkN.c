/*forkN.c fait une boucle où est appelé fork()*/
/*Usage de forkN N ou N est le nombre de tour de boucle */
#include <stdio.h>/*pour prntf()*/
#include <unistd.h>/*pour fork(), getpid() ...*/
#include <stdlib.h>/*pour atoi()*/
//#include <sys/wait.h> //pour wait
int main(int argc, char **argv)
{
int i,N;
pid_t pid;
printf("le programme %s de numéro d'identification %d\n", argv[0],
getpid());
printf("est lancé depuis le shell de numéro d'identification %d\n",
getppid());
N = atoi(argv[1]);
for (i=0;i<N;i++)
{
pid=fork();
switch(pid)
{
case -1:
printf("fork a agendré une erreur\n");
perror("fork :");
break;
case 0:
printf("Ici enfant numéro= %d de parent %d\n", getpid(), getppid());
break;
default:
printf("Ici processus %d qui a engendré un enfant de numéro %d\n",
getpid(), pid);
}
}
sleep(1); /*attendre une seconde*/
//wait(NULL);
return 0;
}