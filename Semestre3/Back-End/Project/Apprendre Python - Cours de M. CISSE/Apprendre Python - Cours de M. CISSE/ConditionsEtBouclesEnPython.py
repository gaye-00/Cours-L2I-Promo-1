import random
#------------------------------- UTILISATION DE IF ------------------------------------#
#IF sans ELSE
age = int(input('Donner votre âge: '))
if age < 18:
	print("Vous êtes mineur")
if age > 18 and age < 40:
	print("Vous êtes majeur")	
if age == 18:
	print("Vous quittez mineur pour aller en majeur")
if 40 <= age and age < 80:
	print("Vous êtes ancien")
if 80 < age:
	print("Préparez vous !!!")	

#IF avec ELSE
note = float(input("Donner la note de l'étudiant: "))
if not(note >= 10): #utilisation de l'opérateur booléen de négation (not)
	print("L'étudiant est renvoyé")	
else:
	print("l'étudiant passe en classe supérieure")

#IF et ELIF
"""
elif est une façon python de dire "si les conditions précédentes n'étaient pas vraies, 
alors essayez cette condition"
"""	
#Remarquez que si on donne 2 valeurs de a et b différentes, le programme qui suit ne nous dira pas
#si a est supérieur ou inférieur à. C'est à cause de l'utilisation de "elif" qui suppose que les
#conditions s'excluent les unes des autres.
#Remarque: faire attention dans l'utilisation de elif si les conditions ne s'excluent pas
a = int(input("Donner une valeur entière pour a"))
b = int(input("Donner une valeur entière pour b"))
if a != b:	# a différent de b (équivaut aussi à : if a is not b)
	print("a = ", a, "est différent de b = ", b)
elif a is b:
	print("a = b = ", a)
elif a > b:
	print("a = ", a, "est supérieur à b = ", b)
else:
	print("a = ", a, "est inférieur à b = ", b)

#------------------------------- UTILISATION DE LA BOUCLE WHILE ------------------------------------#
"""
On utilise la boucle while en Python de la même maniere qu'en Pascal
"""
#Table de Multiplication d'un nombre donné
nombre = int(input("Donner un nombre pour afficher sa table de multiplication: "))
compteur = 1
while compteur <= 12:
	print(nombre, " * ", compteur, " = ", nombre * compteur)
	compteur += 1      #équivaut à compteur = compteur + 1

#------------------------------- UTILISATION DE LA BOUCLE FOR ------------------------------------#
"""
Une boucle for est utilisée pour itérer sur une séquence (c'est-à-dire une liste, un tuple, un dictionnaire,
un ensemble ou une chaîne).
Autrement dit, pour tout type de données représentant une collection d'éléments, on peut utiliser for 
pour parcourir l'ensemble des éléments un à un et de faire les traitements approprié.
"""
#Parcours des éléments d'une chaine pour afficher chaque caractère:
for x in "banana":
	print(x)

"""
Dans l'exemple qui suit, on constitue une liste d'aliments à partir d'une liste de fruits, de légumes
et de viandes. On parcours ensuite la liste des aliments. Si on tombe sur la viande de lion, on 
arrête tout. Si on tombre sur de la viande différent du lion, on 'pass' ou on 'continue'
"""
fruits = ['banana', 'pomme', 'melon', 'pastèque']
legumes = ['carotte', 'pomme de terre', 'aubergine']
viandes = ['mouton', 'vache', 'poulet', 'lion']

aliments = fruits + legumes + viandes
print("aliments = ", aliments)
random.shuffle(aliments)	#On mélange la liste des éléments pour perturber l'ordre
print("aliments = ", aliments)	#Réaffichage après mélange
#Parcours de liste d'aliments avec break et continue
print("Parcours de liste d'aliments avec break et continue")
for x in aliments:
	if x in viandes:
		if x == 'lion':
			break	#Arrête la boucle
		else:
			continue	#Passe à l'itération suivante sans exécuter le print suivant
	print(x)

#Parcours de liste d'aliments avec break et pass
print("Parcours de liste d'aliments avec break et pass")
for x in aliments:
	if x in viandes:
		if x == 'lion':
			break	#Arrête la boucle
		else:
			pass	#rien n'est fait et on Passe à l'instruction suivante (exécuter le print suivant)
	print(x)


"""
Utilisation de for avec range.
La fonction range (début, fin, pas) de Python renvoie une séquence de nombres, commençant par 
'début' (optionnel et dont la valeur par défaut est 0 si non indiqué)  et incrémentée de 
'pas' (optionnel et dont la valeur par défaut est 1 si non indiqué), et s'arrête avant 
'fin' (obligatoire).
"""	
#Utilisation de range pour répter 10 fois quelques chose
for i in range(10):
	print("Parcours n° ", i)

#Utilisation de range pour aller de 1 à 9 par pas de 3
for i in range(1, 10, 3):
	print("Parcours n° ", i)	


#------------------------------- UTILISATION DE MATCH ... CASE -------------------------------#
#C'est l'équivalent du 'case n of' de Pascal
entier1 = int(input("Donner un premier opérande:\n"))
operateur = input("Donner un opérateur parmi +, -, * et /:\n")
entier2 = int(input("Donner un deuxième opérande:\n"))

match operateur:
	case '+':
		print(entier1, " + ", entier2, " = ", entier1 + entier2)
	case '-':
		print(entier1, " - ", entier2, " = ", entier1 - entier2)
	case '*':
		print(entier1, " * ", entier2, " = ", entier1 * entier2)
	case '/':
		if entier2 == 0:
			print("Division par 0 impossible")	
		else:
			print(entier1, " / ", entier2, " = ", entier1 / entier2)
	case default:
		print("Opérateur inconnu")


#BONUS: inversion de chaine (on y reviendra)
chaine = "Papa Alioune"
print(chaine[::-1])