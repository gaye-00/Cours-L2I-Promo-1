def parler(personne, message):
	print("{} : {}".format(personne, message))


def somme_nombre(nombre1, nombre2):
	return nombre1 + nombre2


# Pour tester seulement ce module

if __name__ == "__main__":
	# appler les fonctions
	parler("Gaye : ", "Je dit oui")
	somme = somme_nombre(12,74)
	print("La somme est : {}".format(somme))

