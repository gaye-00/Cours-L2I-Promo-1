nb_paires = 0
nb_positive = 0
nombre = int(input("Donner un nombre positive : "))

while nombre != 0:
	nb_positive += 1

	if(nombre % 2) == 0:
		nb_paires += 1

	nombre = int(input("Donner un nombre positive : "))

print("Les nombres paires sont : {}".format(nb_paires))
print("Les nombres positives sont : {}".format(nb_positive))