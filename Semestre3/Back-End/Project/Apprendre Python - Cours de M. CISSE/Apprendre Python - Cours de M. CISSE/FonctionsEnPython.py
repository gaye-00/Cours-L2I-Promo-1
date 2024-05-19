#------------------------------- DEFINITION DE FONCTIONS ------------------------------------#
"""
En Python, une fonction est définie à l'aide du mot-clé 'def'.
Une fonction peut prendre 0, 1 à plusieurs paramètres (arguments). Quand la fonction prend plus d'un
paramètres, ils sont séparé par des virgules. Il n'est nullement nécessaire, à la définition d'une 
fonction, de préciser le type des paramètres: Il faut juste donner les noms des paramètres
Une fonction peut ne pas renvoyer de valeur.
Une fonction peut renvoyer (retourner) 1 à plusieurs valeurs. Pour renvoyer (retourner) des valeurs dans
une fonction, on utilise le mot cléf 'return'.
"""
#Une fonction qui ne prend pas de paramètres et ne retourne rien:
def fonction1():
	print("Je suis une fonction sans arguments et sans valeur retournée")

#Une fonction qui ne prend pas de paramètres et retourne une valeur (str). La (ou les) valeur(s) de 
#retour d'une fonction peu(ven)t être de n'importe quelle type de données Python:
def fonction1():
	return "Je suis une fonction sans arguments et qui retourne une valeur (str)"

#Une fonction qui prend pas des paramètres et retourne deux valeurs (float) sous forme de tuple:
def rectanle(longueur, largeur):
	perimetre = (longueur + largeur) * 2
	surface = longueur * largeur
	return perimetre, surface
#Cette fonction retourne à la fois le périmètre et la surface calculés d'un rectangle dont la 'longueur'
#et la 'largeur' sont données comme paramètres. La valeur de retour de la fonction est du type appelé
#tuple. Cette fonction sera appelée en prévoyant deux variables pour contenir les 2 valeurs retournées:
#Appel de la fonction:
L = float(input("Donner la longueur d'un rectangle"))
l = float(input("Donner sa largeur"))
P, S = 	rectanle(L, L)	#La fonction rectangle est appelée ici
print("Le périmètre du rectangle = ", P, " et sa surface = ", S)

#------------------------------- ARGUMENTS ARBITRAIRES ------------------------------------#
"""
Si vous ne savez pas combien d'arguments seront transmis à votre fonction, il faudra donner 
un seul parametre à la définition fonction, précédé du caractètre '*'.

De cette façon, la fonction recevra un 'tuple' d'arguments et pourra accéder aux éléments en les parcourant.

En effet, puisque les arguments sont dans un tuple, on peut utiliser pour le parcourir.
"""
#Soit une fonction "calculer_moyenne" censée être utilisée pour calculer la moyenne des étudiants.
#La moyenne est calculée selon la formule: moyenne = (0.7 * examen) + (0.3 * control_continu).
#La note de control_continu étant la moyenne de plusieurs autres notes (devoir, note td, note tp, ...).
#Les notes attribuées peuvent dépendre de la classe, de l'enseignant, ...
#Donc, à la 'définition de la fonction', on ne sait pas combien de notes seront utilisées pour calculer
#la note de cc. Cependant, on s'accorde sur le fait que, à l'appel de la fonction, la dernière note
#renseignée est celle de l'examen et celle(s) qui la précéde(nt) est(sont) la(les) note(s) de cc (On
#suppose aussi qu'au moins une note sera donnée comme cc).
def calculer_moyenne(*notes):
	examen = notes[len(notes) - 1]	#récupération de la note d'examen (dernire note dans le tuple)
	cc = 0.20						#la variable cc est utilisé pour d'abord contnir la somme des autres notes
	for i in range(len(notes) - 1):
		cc+= notes[i]
	cc/= (len(notes) - 1)			#la variable cc est ensuite ré-utilisée pour contenir la note de control continu
	return 0.7 * examen + 0.3 * cc

print(calculer_moyenne(12, 15.0, 0.0, 20.0)) #Pour un étudiant qui a 3 notes de cc et une note d'examen
print(calculer_moyenne(12, 0.0, 12.0)) #Pour un étudiant qui a 2 notes de cc et une note d'examen
print(calculer_moyenne(12, 2.0)) #Pour un étudiant qui a 1 seule note de cc et une note d'examen

#------------------------------- FONCTIONS AVEC VALEURS D'ARGUMENTS PAR DEFAUT-----------------------------#
"""
En Python, il est possible de donner des valeurs par défaut aux paramètres d'une fonction. Cela veut dire
que, à l'appel de la fonction, si des valeurs ne sont pas données pour ces arguments, les valeurs par
défaut seront utilisé
"""
def rectangle(l=6, L=12):	#Par défaut l=6 et L=12
	return l*L

print(rectangle())			#Appel de la fonction sans arguments => valeurs par défaut utilisé (6*12=72)
print(rectangle(5))			#Appel de la fonction avec 1 argument => valeur par défaut L utilisé (5*12=60)
print(rectangle(5,10))		#Appel de la fonction avec 2 arguments => valeurs données utilisées (5*10=50)

#------------------------------- FONCTIONS ET ARGUMENTS DE MOTS CLES ------------------------------------#
"""
A l'appel d'une fonction, il est possible de renseigner les arguments avec la syntaxe paramètre = valeur.

De cette façon, l'ordre des arguments n'a plus d'importance.
"""
print(rectangle(L=10))		#Appel de la fonction en nommant le paramètre L => valeur par défaut de l utilisées (6*10=60)
print(rectangle(l=5))		#Appel de la fonction en nommant le paramètre l => valeur par défaut de L utilisées (5*12=60)
print(rectangle(L=10, l=5))	#Appel de la fonction en nommant les 2 paramètres L et l => l'ordre des arguments n'a plus d'importance (5*10=50)