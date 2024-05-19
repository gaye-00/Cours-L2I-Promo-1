
class Etudiant:
	def __init__(self, prenom, nom, moyenne):
		self.prenom = prenom
		self.nom = nom
		self.moyenne = moyenne

class Classe:
	def __init__(self, toutLesEtudiants, etudiantAdmis, etudianstNonAdmis):
		self.toutLesEtudiants = toutLesEtudiants
		self.etudiantAdmis = etudiantAdmis
		self.etudianstNonAdmis = etudianstNonAdmis

	def ajoute_etudiant(self, student):
		self.toutLesEtudiants.append(student)

	def deliberer(self):
		for i in self.toutLesEtudiants:
			if(i.moyenne >= 10):
				self.etudiantAdmis.append(i)
			else:
				self.etudianstNonAdmis.append(i)

	def affichage(self):
		self.etudiantAdmis.sort(key = lambda x: x.moyenne, reverse = True)
		#self.etudiantAdmis.reverse()

		print("\nLes etudiants par odre de merite")
		for i in self.etudiantAdmis:
			print("{} {} Moyenne : {}".format(i.prenom, i.nom, i.moyenne))

# Debut du programme principal

cla = Classe(list(), list(), list())

nombre = int(input("Donner le nombre des etudiants : "))

for i in range(nombre):
	prenom = input("\nDonner le prenom : ")
	nom = input("Donner le nom : ")
	moyenne = int(input("Donner la moyenne : "))

	st = Etudiant(prenom, nom, moyenne)

	cla.ajoute_etudiant(st)

cla.deliberer()
cla.affichage()

