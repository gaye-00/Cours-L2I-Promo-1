#include <stdio.h>
#include <stdbool.h>

#define MAX_N 100

struct Personne {
    int numero;
    int pref[MAX_N];
};

bool est_disponible(int numero, int couples[], int n) {
    for (int i = 0; i < n; i++) {
        if (couples[i] == numero) {
            return false;
        }
    }
    return true;
}

void mariage_stable(struct Personne hommes[], struct Personne femmes[], int n) {
    int couples[n];
    for (int i = 0; i < n; i++) {
        couples[i] = -1;
    }

    for (int i = 0; i < n; i++) {
        for (int j = 0; j < n && est_disponible(hommes[i].numero, couples, n); j++) {
            int femme = hommes[i].pref[j];
            for (int k = 0; k < n; k++) {
                if (femmes[femme].pref[k] == hommes[i].numero) {
                    if (couples[femme] == -1) {
                        couples[femme] = hommes[i].numero;
                        break;
                    } else {
                        int mari_actuel = couples[femme];
                        bool prefere_mari_actuel = false;
                        for (int l = 0; l < n; l++) {
                            if (femmes[femme].pref[l] == mari_actuel) {
                                prefere_mari_actuel = true;
                                break;
                            } else if (femmes[femme].pref[l] == hommes[i].numero) {
                                prefere_mari_actuel = false;
                                break;
                            }
                        }
                        if (!prefere_mari_actuel) {
                            couples[femme] = hommes[i].numero;
                            break;
                        }
                    }
                }
            }
        }
    }

    printf("Couples formés :\n");
    for (int i = 0; i < n; i++) {
        printf("Homme %d <-> Femme %d\n", couples[i], i);
    }
}


// Cette fonction prend en entrée deux tableaux d'hommes et de femmes, ainsi qu'une variable n qui
// représente le nombre d'hommes et de femmes. Chacun des struct Personne contient un numéro
// d'identification et une préférence de partenaire (d