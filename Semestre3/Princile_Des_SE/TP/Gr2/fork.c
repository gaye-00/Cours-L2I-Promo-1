#include <stdio.h>/*pour printf()*/
#include <unistd.h>/*pour fork(), getpid() ...*/
// #include <sys/wait.h> //pour wait
int main ( void ) {
pid_t pid;
pid = fork ();
if ( pid == 0 ) {
printf ("je suis le fils %d (père %d)\n",
getpid (), getppid () );
} else {
printf ("je suis le père %d (fils %d)\n",
getpid (), pid );
// sleep(1);/*attendre une seconde*/
}
return 0;
}