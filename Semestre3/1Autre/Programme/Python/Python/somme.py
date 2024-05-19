def somme(nb1, nb2):
	return nb1 + nb2

nombre1 = -1
while nombre1 == -1:
	nombre1 = input("Donner en entier positif : ")

	try:
		nombre1 = int(nombre1)
	except:
		print("Le nombre entrer est invalide !")
		nombre1 = -1


nombre2 = -1
while nombre2 == -1:
	nombre2 = input("Donner en entier positif : ")

	try:
		nombre2 = int(nombre2)
	except:
		print("Le nombre entrer est invalide !")
		nombre2 = -1

print("\nLa somme de", nombre1, "et de", nombre2, "sont :", somme(nombre1, nombre2))