def carre(cote):
	return cote * 4, cote * cote

def rectangle(L, l):
	return (L + l)*2, L*l

def cercle(r):
	return 2*r*3.14, 3.14*r*r

def figue(type_figure):
	if(type_fig == "Carre"):
		cote = int(input("Donner le cote du carre : "))
		p, s = carre(cote)
		return "{}({}), perimetre = {} et surface {}".format(type_figure, cote, p, s)
	elif(type_fig == "Rectangle"):
		largeur = int(input("Donner la largeur du carre : "))
		longueur = int(input("Donner la longueur du carre : "))
		p, s = rectangle(largeur, longueur)
		return "{}({}, {}), perimetre = {} et surface {}".format(type_figure, longueur, largeur, p, s)
	else:
		# Surface du cercle = PI * R²
		# Perimetre du cercle = 2 * R * PI
		rayon = int(input("Donner le rayon du cercle : "))
		p, s = cercle(rayon)
		return "{}({}), perimetre = {} et surface {}".format(type_figure, rayon, p, s)



# Programme principal

print("\nLes types de figures disponibles : Carre, Rectangle, Cercle\n")

type_fig = input("Donner le type de la figure : ")

while ((type_fig != "Carre") and (type_fig != "Rectangle") and (type_fig != "Cercle")):
	print("Le type de figure entrer est non valide !")
	type_fig = input("Donner encore le type de la figure : ")


print(figue(type_fig))	