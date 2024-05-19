import pickle


class Etudiant:
	def __init__(self, nom, prenom, sexe, note):
		self.nom = nom
		self.prenom = prenom
		self.sexe = sexe
		self.note = note

	def affichage(self):
		print("{} {} Sexe : {} Note : {}".format(self.nom, self.prenom, self.sexe, self.note))

	"""def saisie(self):
		print("Donner le nom de l'etudiant : ")
		self.nom = """

# Programme principal

Student1 = Etudiant("Abdoulaye", "Gaye", "Homme", "X")

with open("info_etudiant.date", "wb") as fichier:
	record = pickle.Pickler(fichier)
	record.dump(Student1)