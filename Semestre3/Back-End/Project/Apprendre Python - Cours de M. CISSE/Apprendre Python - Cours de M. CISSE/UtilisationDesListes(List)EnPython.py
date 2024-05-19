#------------------------------- LES LISTES EN PYTHON ------------------------------------#
"""
Les listes sont parmi les 4 types (list, Tupe, Set, Dictionnary)de données Python permettant d'avoir 
une collection de données.

Elles permettent d'avoir plusieurs éléments dans une même variable.

On a une liste quand on affecte à une variable un ensemble d'éléments entre des crochets et séparés par des
virgules.

Les éléments d'une liste peuvent être ordonnées, modifiés, supprimés, dupliqués, etc.

Les éléments d'une liste sont indexés et le premier élément de la liste a pour indexe 0, le deuxième 1, ...

Une liste peut contenir tout type de données et les éléments d'une liste peuvent être de types différents.
"""

############ CREATION D'UNE LISTE ############
liste_de_fruits = ["pomme", "banana", "orange", "pastèque", "prune", "raisin", "poire", "clémentine"]
print("Ma liste de fruits est:", liste_de_fruits)

############# FACONS D'ACCEDER AUX ELEMENTS D'UNE LISTE ############
#Acceder à un élément par son index
print("Le premier fruits est:", liste_de_fruits[0])	#1er élément est à l'indexe 0

#Utiliser la méthode len pour avoir le nombre d'éléments de la liste
print("Le dernier fruits est:", liste_de_fruits[len(liste_de_fruits) - 1])

#Acceder à un élément par indexation négative
"""
L'indexation négative signifie commencer par la fin

-1 fait référence au dernier élément, -2fait référence à l'avant-dernier élément, etc.
"""
print("Le dernier fruits est:", liste_de_fruits[-1])

#Acceder à une sous liste d'une liste
"""
Vous pouvez spécifier une plage d'index en spécifiant où commencer et où terminer la plage.

Lors de la spécification d'une plage, la valeur de retour sera une nouvelle liste avec les éléments spécifiés.
"""
print("Les fruits: 3 à 5:", liste_de_fruits[2:5])
#La recherche commencera à l'index 2 (inclus) et se terminera à l'index 5 (non inclus).

print("Les fruits: du début à 5:", liste_de_fruits[:5])
#La recherche commencera au début de liste et se terminera à l'index 5 (non inclus).

print("Les fruits: de 3 à la fin:", liste_de_fruits[2:])
#La recherche commencera  de l'index 2 jusqu'à la fin de la liste.

print("Les fruits: du début à la fin:", liste_de_fruits[:])	#équivaut à print(liste_de_fruits)

print("Les fruits: 3 à la fin par pas de 2:", liste_de_fruits[2::2])

print("Les fruits: de la fin au début par pas de 1:", liste_de_fruits[::-1])	#inversion (à cause du -1) de la liste

#Vérification de l'existance d'un élément dans une liste
if "orange" in liste_de_fruits:
	print("orange est bien dans liste")
else:
	print("orange n'est pas dans la liste")	

############# MODIFICATION DES ELEMENTS D'UNE LISTE ############
liste_de_fruits[1] = "melon"	#Modification de l'élément à l'indexe 1 (2ème élément)
print("Mon deuxième fruit est changé à melon:", liste_de_fruits)

"""
Pour modifier la valeur des éléments dans une plage spécifique, définissez une liste avec les nouvelles 
valeurs et référez-vous à la plage de numéros d'index où vous souhaitez insérer les nouvelles valeurs :
"""
liste_de_fruits[3:7] = ['citron', 'avocat', 'cerise']
print("liste_de_fruits après changement de plage de fruits = ", liste_de_fruits)

"""
Inserer des éléments dans une liste avec la méthode 'insert()'
Pour insérer un nouvel élément de liste, sans remplacer aucune des valeurs existantes, nous pouvons utiliser la 
méthode insert().

La méthode insert() insère un élément à l'index spécifié :
"""
liste_de_fruits.insert(2, "grenade")
print("liste_de_fruits après insertion de grenade = ", liste_de_fruits)

############# AJOUT D'ELEMENTS DANS UNE LISTE ############
"""
Pour ajouter un élément en fin de liste, on utilise la méthode 'append()'
"""
liste_de_fruits.append("poire")
print("liste_de_fruits après ajout en fin de liste = ", liste_de_fruits)

"""
Pour étendre une liste avec une autre liste, on utilise la méthode extend()
"""
liste_de_fruits.extend(["cacao", "datte", "corossol"])
print("liste_de_fruits après extension = ", liste_de_fruits)

############# SUPPRESSION D'ELEMENTS DANS UNE LISTE ############
"""
Pour supprimer un élément spécifié, on utilise la méthode 'remove()'
"""
liste_de_fruits.remove('melon')
print("liste_de_fruits après suppresion de melon = ", liste_de_fruits)

"""
Pour supprimer un élément à un index spécifié, on utilise la méthode 'pop()'
"""
liste_de_fruits.pop(0)
print("liste_de_fruits après suppresion avec pop = ", liste_de_fruits)

#Quand un index n'est pas spécifié, la méthode 'pop' supprime le dernier de la liste
liste_de_fruits.pop()
print("liste_de_fruits après suppresion avec pop sans index = ", liste_de_fruits)

"""
Pour vider une liste, on utilise la méthode 'clear()'
"""
liste_de_fruits_ = liste_de_fruits.copy()	
#On crée une nouvelle liste (à vider) à partit de liste_de_fruits. Notez bien que liste_de_fruits_ est créée par 'copy()' et non par '='
print("Avant 'clear', liste_de_fruits_ = ", liste_de_fruits_)
liste_de_fruits_.clear()
print("Après 'clear', liste_de_fruits_ = ", liste_de_fruits_)

############# COMPREHENSION DE LISTE AVEC EXPRESSIONS COURTES ############
"""
La compréhension de liste offre une syntaxe plus courte lorsque vous souhaitez créer une nouvelle liste basée 
sur les valeurs d'une liste existante.

Exemple: Sur la base de notre liste de fruits, vous pouvez vouloir une nouvelle liste contenant uniquement
les fruits avec la lettre "a" dans le nom.
"""
#Sans compréhension de liste, vous devriez écrire une boucle 'for' avec un test conditionnel à l'intérieur :
#Rapplez vous liste_de_fruits_ est vide

for x in liste_de_fruits:
	if "a" in x:
  		liste_de_fruits_.append(x)

print("liste_de_fruits_ = ", liste_de_fruits_)

"""
Avec la compréhension de liste, vous pouvez faire tout cela avec une seule ligne de code :
"""
liste_de_fruits_.clear()
liste_de_fruits_ = [x for x in liste_de_fruits if "a" in x]
print("liste_de_fruits_ avec comprehension = ", liste_de_fruits_)

"""
La syntaxe:

newlist = [expression for item in iterable if condition == True]

La valeur de retour est une nouvelle liste, laissant l'ancienne liste inchangée.

La condition (qui est facultative et peut être omise) est comme un filtre qui n'accepte que les éléments dont la valeur est True.

L' itérable peut être n'importe quel objet itérable, comme une liste, un tuple, un ensemble, etc.

L' expression est l'élément actuel de l'itération, mais c'est aussi le résultat, que vous pouvez manipuler avant qu'il ne finisse 
comme un élément de liste dans la nouvelle liste
"""

#Vous pouvez utiliser la fonction 'range()' pour créer un itérable :
liste_de_fruits_.clear()
liste_de_fruits_ = [liste_de_fruits[x].upper() for x in range(len(liste_de_fruits)) if "a" in liste_de_fruits[x]]
print("liste_de_fruits_ avec comprehension = ", liste_de_fruits_)

############# TRI DE LISTE ############
"""
Pour trier une liste alphanumériquement par ordre croissant, on utilise la méthode 'sort()'
"""
liste_de_fruits.sort()
print("liste_de_fruits trié par ordre croissant = ", liste_de_fruits)

#Pour trier par ordre décroissant, utilisez l'argument mot-clé 'reverse = True':
liste_de_fruits.sort(reverse = True)
print("liste_de_fruits trié par ordre décroissant = ", liste_de_fruits)

############# COPIE DE LISTE ############
"""
Vous ne pouvez pas copier une liste simplement en tapant list2 = list1, car : list2ne sera qu'une référence 
à list1, et les modifications apportées dans list1le seront également automatiquement dans list2.

Il existe plusieurs façons de faire une copie, l'une consiste à utiliser la méthode intégrée 'copy()'.
"""
liste_de_fruits_ = liste_de_fruits.copy()

#Une autre façon de faire une copie consiste à utiliser la méthode intégrée list().
liste_de_fruits_ = list(liste_de_fruits)
print("liste_de_fruits_ après copie par la méthode 'list()' = ", liste_de_fruits_)

############# JOINDRE DES LISTE ############
"""
Il existe plusieurs façons de joindre ou de concaténer deux ou plusieurs listes en Python.

L'un des moyens les plus simples consiste à utiliser l'opérateur '+'.
"""
liste_de_fruits_ = ['banana'] + ["pomme", 'cerise']
print("liste_de_fruits_ devient: ", liste_de_fruits_)

"""
D'autres façons de faire consistent :
- à étendre l'une par l'autre avec la méthode 'extend()'
- à ajouter avec la méthode 'append()' un à un les éléments de l'une sur l'autre
"""
