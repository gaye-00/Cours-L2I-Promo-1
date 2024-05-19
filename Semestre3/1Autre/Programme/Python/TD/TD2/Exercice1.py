import random
import os
import time


# ---------------------------------------Programme principal---------------------------------------


chaine = "\t\t\t\t   ----------------------------------------\n\t\t\t\t  | PROMO 20-21,Annee academique:2022-2023 |\n\t\t\t\t   ----------------------------------------\n\n\t\t\t\t ---------------------------------------------\n\t\t\t\t|   Licence 2 en Ingenieurie Informatique     |\n\t\t\t\t|         ----------***----------             |\n\t\t\t\t|          Prof. Pape Aliou CISSE             |\n\t\t\t\t ---------------------------------------------\n\t\t\t\t  ------------------------------------------\n\t\t\t\t  | Fiche n*2 TD/TP: Le jeu du nombre caché |  \n\t\t\t\t  ------------------------------------------\n\t\t\t\t\t    Abdoulaye GAYE\n\n"
longue = len(chaine)

for i in range(longue):
	print(chaine[i], end='')
	time.sleep(.0001)
	
os.system("pause")
os.system("cls")

while True:
	nombre = input("Donner le nombre de tentative que tu veut faire ? ")
	try:
		nombre = int(nombre)
		if(nombre > 0):
			break
	except:
		print("\nEntrer non valide !. Recommencer...")
		continue

x = random.randint(0, 100)

tentative = -1
i = 1

while((tentative != x) and (nombre > 0)):
	tentative = input("{} : Donner un nombre : ".format(i))

	try:
		tentative = int(tentative)
	except:
		print("\nEntrer non valide !. Recommencer...")
	else:
		if(tentative > x):
			print("Trop grand !")
		if(tentative < x):
			print("Trop petit !")

		nombre -= 1
		i += 1

if(nombre != 0):
	print("\nVous avez reussie a la {}-eme tentative Merci.".format(i-1))
else:
	print("\nVous aves echoue ! Du courage. Le nombre ete {}.".format(x))
