def carre(cote):
	return cote * 4, cote * cote

cot = int(input("Donner le cote du carre : "))
perimetre, surface = carre(cot)

print("La surface est {} et le perimetre est {}".format(surface, perimetre))

