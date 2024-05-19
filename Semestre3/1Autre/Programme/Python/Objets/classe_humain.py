
class Humain:
	"""
	doc-string
	"""
	humain_crees = 0

	def __init__(self, c_prenom, c_age):
		print("Creation d'un humain\n")
		self.prenom = c_prenom
		self.age = c_age
		Humain.humain_crees += 1

print("Lancement du programme...\n")

h1 = Humain("Gaye", 21)
print("Prenom de h1 : {}".format(h1.prenom))
print("Age de h1 : {}".format(h1.age))

h2 = Humain("Sow", 33)
print("Prenom de h2 : {}".format(h2.prenom))
print("Age de h2 : {}".format(h2.age))

print("\nLe nombre d'humains existents est : {}".format(Humain.humain_crees))