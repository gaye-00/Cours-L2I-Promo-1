import os
import time
import random
import copy


#---------------------------------------------------------------------------------------------
# Fontion qui ne renvoie qu'un nombre entier
def nombre_entier():

	while True:
		nombre = input()
		try:
			nombre = int(nombre)
			if((nombre > 0) or (nombre <= 0)):
				break
		except:
			print("\nEntrer non valide !. Recommencer... ", end="")
			continue

	return nombre


#---------------------------------------------------------------------------------------------
# Fonction qui retourne qu'un entier strictement postif
def entier_positif(entier):

	while True:
		if(entier > 0):
			break
		else:
			print("Erreur ! Entrer un entier positif... ", end="")
			entier = nombre_entier()

	return entier


#---------------------------------------------------------------------------------------------
# Creation et insertion des valeurs aleatoires dans une liste
def listAleaInt(n, a, b):

	mylist = []

	for i in range(n):
		mylist.append(random.randint(a, b))

	return mylist


#---------------------------------------------------------------------------------------------
# Tri de maniere personnaliser les n premieres valeurs
def tri_personnaliser(mylist):

	while True:
		print("\nDonner les n premier elements a tries ? ", end="")
		n = nombre_entier()
		n = entier_positif(n)
		maxe = len(mylist)

		if((n > maxe) or (n <= 0)):
			print("Le valeur doit etre entre [1..{}] : ".format(maxe))
			pass
		else:
			mylist2 = copy.deepcopy(mylist[:n])
			del mylist[:n]
			break

	mylist2.sort()
	mylist2 += mylist

	return mylist2


#---------------------------------------------------------------------------------------------
# Modification de la liste 
def modification_list(mylist):

	while True:
		print("Donner le numero de l'emplacement de la valeur : ", end="")
		numero = nombre_entier()
		maxe = len(mylist)

		if((numero > maxe) or (numero <= 0)):
			print("Le valeur doit etre entre [1..{}] : ".format(maxe))
			pass
		else:
			print("Donner la nouvelle valeur : ", end="")
			new_value = nombre_entier()
			mylist[numero-1] = new_value
			break

	return mylist


#---------------------------------------------------------------------------------------------
# Suppression d'element dans la liste
def suppression_element(mylist):

	while True:
		print("Donner le numero de l'emplacement de la valeur a suppimer : ", end="")
		numero = nombre_entier()
		maxe = len(mylist)

		if((numero > maxe) or (numero <= 0)):
			print("Le valeur doit etre entre [1..{}] : ".format(maxe))
			pass
		else:
			del mylist[numero-1]
			break

	return mylist


#---------------------------------------------------------------------------------------------
# Insertion dans la liste
def insertion_element(mylist):

	while True:
		print("Donner l'emplacement a inserer une nouvelle valeur : ", end="")
		numero = nombre_entier()
		maxe = len(mylist)

		if((numero > maxe) or (numero <= 0)):
			print("Le valeur doit etre entre [1..{}] : ".format(maxe))
			pass
		else:
			print("Donner la valeur a inserer : ", end="")
			new_value = nombre_entier()
			mylist.insert(numero-1, new_value)
			break

	return mylist

#---------------------------------------------------------------------------------------------
# Copier dans une nouvelle liste
def copie_liste(mylist):

	mylist2 = copy.deepcopy(mylist)

	print("La nouvelle liste est ", mylist2[:])

	while True:
		print("\nVoulez vous ajouter, modifier, inserer ou suppimer dans la nouvelle liste ?")
		print(" -Taper 1 : ajouter\n -Taper 2 : Modifier\n -Taper 3 : Supprimer\n -Taper 4 : Inserer\n -Taper 0 : Quitter...")
		print("\nDonner ton choix dans la liste copy : ", end="")
		choix = nombre_entier()

		if((choix < 0) or (choix > 4)):
			print("\nSaisie non valide...")
			pass
		elif(choix == 1):
			print("Donner l'element a ajouter : ", end="")
			element = nombre_entier()
			mylist2.append(element)
			print("La nouvelle liste est ", mylist2[:])
		elif(choix == 2):
			mylist2 = modification_list(mylist2)
			print("La nouvelle liste est ", mylist2[:])
			continue
		elif(choix == 3):
			mylist2 = suppression_element(mylist2)
			print("La nouvelle liste est ", mylist2[:])
		elif(choix == 4):
			mylist2 = insertion_element(mylist2)
			print("La nouvelle liste est ", mylist2[:])
		else:
			break

	return mylist, mylist2


#---------------------------------------------------------------------------------------------
# Etendre la liste avec de nouvelle elements
def etendre_liste(mylist, a, b):

	print("Donner le nombre d'elements a ajouter : ", end="")
	nombre = nombre_entier()
	nombre = entier_positif(nombre)

	mylist2 = listAleaInt(nombre, a, b)
	mylist += mylist2

	return mylist


#---------------------------------------------------------------------------------------------
# Jointure des listes
def joindre_list(mylist, mylist2):

	print("Liste 1 :", mylist, "\nListe 2 :", mylist2)
	mylist += mylist2

	return mylist

# ---------------------------------------Programme principal---------------------------------------


chaine = "\t\t\t\t   ----------------------------------------\n\t\t\t\t  | PROMO 20-21,Annee academique:2022-2023 |\n\t\t\t\t   ----------------------------------------\n\n\t\t\t\t ---------------------------------------------\n\t\t\t\t|   Licence 2 en Ingenieurie Informatique     |\n\t\t\t\t|         ----------***----------             |\n\t\t\t\t|          Prof. Pape Aliou CISSE             |\n\t\t\t\t ---------------------------------------------\n\t\t\t\t  ------------------------------------------\n\t\t\t\t  | Fiche n*2 TD/TP: Manipulation de liste |  \n\t\t\t\t  ------------------------------------------\n\t\t\t\t\t    Abdoulaye GAYE\n\n"
longue = len(chaine)

for i in range(longue):
	print(chaine[i], end='')
	time.sleep(.0001)
	
os.system("pause")
os.system("cls")

print("Donner le nombre d'element de la liste ? ", end="")
n = nombre_entier()
n = entier_positif(n)

while True:
	print("\nDonner l'intervalle des d'elements de la liste [A..B]")
	print("Donner A : ", end="")
	a = nombre_entier()
	print("Donner B : ", end="")
	b = nombre_entier()
	if(a > b):
		print("\nErreur ! A doit etre superieur ou egale a B. Recommencer...")
		continue
	else:
		break

mylist = []
mylist = listAleaInt(n, a, b)
print(mylist[:])

print("\n")
print("1  -Tris croissant de la liste")
print("2  -Tris decroissant de la liste")
print("3  -Tris personnalise de la liste")
print("4  -Modification de la liste")
print("5  -Suppression d'elements dans la liste")
print("6  -Insertion dans la liste")
print("7  -Copier la liste dans un autre")
print("8  -Cree une nouvelle liste")
print("9  -Etendre la liste")
print("10 -Joindre des listes")
print("11 -Effacer la liste")
print("0  -Quitter...")

while True:
	print("\nEntrer ton choix : ", end="")
	choix = nombre_entier()

	if(choix < 0 or choix > 11):
		print("Le choix entrer est non valide !...")
		pass

	elif(choix == 0):
		mylist.clear()
		break

	elif(choix == 11):
		mylist.clear()
		print(mylist[:])
		print("Liste effacee...FIN")
		os.system("pause")
		break

	elif(choix == 1):
		mylist.sort()
		print("Apres tris croissante de la liste\n",mylist[:])

	elif(choix == 2):
		mylist.sort()
		mylist.reverse()
		print("Apres tris decroissante de la liste\n",mylist[:])

	elif(choix == 3):
		mylist = tri_personnaliser(mylist)
		print("Apres tris personnaliser\n", mylist[:])

	elif(choix == 4):
		mylist = modification_list(mylist)
		print("Apres modification de la liste\n",mylist[:])

	elif(choix == 5):
		mylist = suppression_element(mylist)
		print("La liste apres suppression est\n",mylist[:])

	elif(choix == 6):
		mylist = insertion_element(mylist)
		print("Apres insertion de la liste\n",mylist[:])

	elif(choix == 7):
		mylist2 = []
		mylist, mylist2 = copie_liste(mylist)
		print("\nListe 1 :", mylist[:], "\nliste 2 :", mylist2[:])

	elif(choix == 8):
		mylist2 = listAleaInt(n, a, b)
		print("1-ere liste :",mylist[:], "\n2-eme liste :",mylist2[:])

	elif(choix == 9):
		mylist = etendre_liste(mylist, a, b)
		print("Apres extention la liste est :\n", mylist[:])

	elif(choix == 10):
		mylist2 = listAleaInt(n, a, b)
		mylist = joindre_list(mylist, mylist2)
		print("Apres jointure la liste est \n", mylist[:])




merci = "FIN PROGRAMME MERCI !"
merci = merci.center(75, '-')
os.system("cls")
print(merci)
