#------------------------------- LES COMMENTAIRES EN PYTHON ------------------------------------#
#Ceci est un commentaire sur une ligne

"""
Ceci est un commentaire qui tient sur:
plusieurs lignes ...
....
"""

#Ceci est un commentaire
#qui tient sur plusieurs lignes
#Avec des # successifs par ligne
#...

#------------------------------- AFFICHAGE AVEC PRINT ------------------------------------#
'''
Affichage d'un message avec print. Notez que print peut prendre 1 à plusieurs arguments.
Quand plusieurs arguments sont passés à print, ils sont séparés par des ",".
'''
print("Bonjour tout le monde")
#Ici, un seul argument (une constante chaine) est passé à print avec des "".
#On pouvait aussi utiliser des '', mais il faut faire attention s'il y a (') dans la chaine.

age = 20	#Utilisation de variable
print("J'ai " + str(age) + " ans")
#Ici aussi, un seul argument (une chaine obtenue par concaténations successives) est passé à print
#Retenez aussi que pour concatener une chaine et un nombre, il faut d'abord transformer le nombre 
#en chaine. Ce qui est fait avec str(age)

print("J'ai", age, 'ans')
#Ici, 3 arguments (la chaine "J'ai", la variable age et la chaine "ans") sont passés à print.
#A l'exécution, vous pouvez remarquez que Python ajoute automatiquement des espaces entre les arguments

#------------------------------- LECTURE AVEC INPUT ------------------------------------#
"""
Quand le programme doit lire une valeur, vous pouvez utiliser input qui prend en entrée une chaine 
(le message qui accompagne la lecture) et retourne une chaine (la valeur lue par le programme).
Attention: n'oubliez pas de faire le transtypage si ce que retourne 'input' doit être d'un type différent
de chaine
"""

nom = input("Quel est votre nom\n")
print("Bonjour", nom)
#Ici, la variable nom est censé être une chaine, donc reçoit directement le retour de "input"

age = int(input("Quel est votre âge\n"))
print("Bonjour", nom, "Vous avez", age, "ans")
#Ici, la variable age est censée recevoir un entier. Ce qui explique l'opération de casting (transtypage)
#Cette opérationd de casting peut aussi être effecuée s'il s'agit d'un float. Ex: float("20.5")

#------------------------------- LES VARIABLES EN PYTHON ------------------------------------#
"""
Notez que Python n'as pas de commande pour déclarer une variable comme c'est le cas en Pascal, par exemple.
Pour utiliser une variable dans un programme Python, il suffit de lui affecter une valeur. Une fois fait,
le type de la variable est celui de sa valeur.
Une variable peut aussi changer de valeur et de type au cours d'un programme.
"""

x = 15	#x est une variable de type (int) et sa valeur est 15
#...
#Quelques lignes de code plus tard
#...
x = "Papa Alioune"	#x change de valeur (Papa Alioune) et de type (str)

"""
Opérations de Casting avec les variables
"""
x = int('3')	#x a pour valeur 3
y = float(3)	#y a pour valeur 3.0
z = str(3)		#z a pour valeur la chaine '3' de type (str)

"""
Pour connaitre le type d'une variable, utilisez la fonction prédéfinie "type(uneVariable)"
"""
x = 3.5
print(type(x))	#Affiche float

"""
Variables et sensibilité à la casse.
"""
#Python étant sensible à la casse, alors dans:
x = 15
X = 15
#x et X sont deux variables différentes

"""
Affectation multiple de variables
"""
x = y = z = 20
#équivaut à:
x = 20
y = 20
z = 20

x, y, z = [1, 2, 3]	#donne x = 1, y = 2 et y = 3
#Même chose quand on le fait avec un tuple
x, y, z = (1, 2, 3)

"""
Notion de variable globale
"""
#Une variable x déclarée à l'extérieur d'une fonction f peut être utilisée à l'intérieur de la fonction f:
#elle est vue dans la fonction f comme une variable globale (qu'elle soit 'déclarée' avant ou après la fonction).
def f():
	print(qq + 15)

qq = 5

f()

#Attention: s'il y a une variable locale dans la fonction qui est de même nom que la variable qq, 
#C'est cette variable locale qui est considérée dans la fonction
pp = 5
def ff():
	pp = 6
	print(pp)

ff()	#Affiche 6 (la valeur de la variable locale pp dans la fonction ff et non pp en dehors)	

#Dans tous les cas, il est possible de désigner une variable globale eu utilisant le mot clé "global"
def myfunc():
 	global x1
 	x1 = "fantastique"

myfunc()

print("Python est " + x1)

#Le mot clé "global" peut être utilisé aussi pour changer la valeur d'une variable globale dans une fonction
x = "awesome"

def myfunc():
	global x
	x = "élégant"

myfunc()

print("Python est " + x)

#------------------------------- EXERCICES ------------------------------------#
"""
Exercice 1
Ecrire un script Python qui demande la longueur et la largeur d’un rectangle, calcule et affiche sa surface.

Exercice 2
Affectez les variables temps et distance par les valeurs 6.892 et 19.7.
Calculez et affichez la valeur de la vitesse.
Améliorez l’affichage en imposant un chiffre après le point décimal.
"""

#------------------------------- CORRECTIONS DES EXERCICES ------------------------------------#
#Exercice 1
longueur = float(input("Donner la longueur du rectangle"))
largeur = float(input("Donner la largeur du rectangle"))
print("La surface du rectangle est: " + str(longueur * largeur))

#Exercice 2
temps = 6.892
distance = 19.7
vitesse = distance / temps
print("La vitesse est: " + str(vitesse))
#Amélioration de l'affichage en imposant 1 chiffre après la virgule - Façon 1
print("La vitesse est:", "%.1f" % vitesse)
#Amélioration de l'affichage en imposant 1 chiffre après la virgule - Façon 2 (avec la méthode format)
print("La vitesse est:", "{:.1f}".format(vitesse))
#Amélioration de l'affichage en imposant 1 chiffre après la virgule - Façon 3 (avec la méthode round)
print("La vitesse est:", round(vitesse, 1))