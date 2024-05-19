import include.fonction as fonction

fonction.parler("Abdoulaye", "Salut l'ami")

nombre1 = input("Donner un premier nombre : ")
nombre1 = int(nombre1)

nombre2 = input("Donner un deuxieme nombre : ")
nombre2 = int(nombre2)

print("La somme de", nombre1, "et de", nombre2,"est :", fonction.somme_nombre(nombre1, nombre2))