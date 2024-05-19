import os
import time


chaine = "\t\t\t\t   ----------------------------------------\n\t\t\t\t  | PROMO 20-21,Annee academique:2022-2023 |\n\t\t\t\t   ----------------------------------------\n\n\t\t\t\t ---------------------------------------------\n\t\t\t\t|   Licence 2 en Ingenieurie Informatique     |\n\t\t\t\t|         ----------***----------             |\n\t\t\t\t|          Prof. Pape Aliou CISSE             |\n\t\t\t\t ---------------------------------------------\n\t\t\t\t  ------------------------------------------\n\t\t\t\t  | Fiche n*2 TD/TP: Manipulation de liste |  \n\t\t\t\t  ------------------------------------------\n\t\t\t\t\t\t\t  Abdoulaye GAYE\n\n"
longue = len(chaine)

for i in range(longue):
	print(chaine[i], end='')
	time.sleep(.0001)
	
os.system("pause")
os.system("cls")
