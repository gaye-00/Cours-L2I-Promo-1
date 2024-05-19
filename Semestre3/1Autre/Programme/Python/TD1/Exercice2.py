
def surface(long, larg):
	return long * larg

longueur = int(input("Donner la longueur du rectangle : "))
largeur = int(input("Donner la largeur du rectangle : "))

print("La surface est {}".format(surface(longueur, largeur)))