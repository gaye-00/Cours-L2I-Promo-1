from Classes.CompteClient import *


class Client():
	def __init__(self, prenom, nom, adress, tel, profession):
		self.prenom = prenom
		self.nom = nom
		self.adress = adress
		self.tel = tel
		self.profession = profession

	def __str__(self):
		return self.prenom + " " + self.nom


class CompteClient(Compte):
	def __init__(self, solde, num_compte, proprietaire_compte):
		Compte.__init__(self, solde)
		self.num_compte = num_compte
		self.proprietaire_compte = proprietaire_compte

		def afficheSolde(self):
			#print(f"Client : {self.proprietaire_compte}")
			print("Client :" + self.proprietaire_compte.prenom + "N compte :" + self.num_compte + "Solde :" + str(self.solde))


class Banque:
	def __init__(self):
		self.list_compte_client = []

	def ajouter(self, CompteAjout):
		self.list_compte_client.append(CompteAjout)

	def supprimer(self, CompteSup):
		self.list_compte_client.remove(CompteSup)

	def afficheCompteClient(self, client):
		for i in self.list_compte_client:
			#if i.proprietaire_compte.tel = client.tel:
			if i.tel == client.tel:
				i.afficheSolde()

	def afficheSoldeTotal(self, telephone):
		for i in self.list_compte_client:
			if i.proprietaire_compte.telephone == client.telephone:
				solde += i.solde
		#print(f"Solde Total".{str(solde)})
		print("Solde Total : ".format(solde))

	def afficheTotalBanque(self):
		solte = 0
		for i in self.list_compte_client:
			solte += i.solde

		#print(f"Solde Total Banque".{str(solde)})
		print("Solde Total Banque : {}".format(solte))


def nombre_flotant():

	while True:
		nombre = input("Donner le solde initial : ")
		try:
			nombre = float(nombre)
			if(nombre >= 0):
				break
		except:
			print("\nEntrer non valide !. Recommencer... ")
			continue

	return nombre




# Debut du programme principal

"""compte1 = Client("Abdoulaye", "Gaye", "Khombole", "774952024", "Etudiant")
cmpclient1 = CompteClient(1000, 36254, compte1)"""

mabanque = Banque()

y = input("\nDonner le nombre de compte client a cree : ")
for i in range(int(y)):
	prenom = input("\nDonner le prenom : ")
	nom = input("Donner le nom : ")
	adress = input("Donner l'adress : ")
	tel = input("Donner le telephone : ")
	soldeIni = nombre_flotant()
	proffession = input("Donner le profession : ")
	numero = prenom[0] + nom[0] + str(i)

	client = Client(nom, prenom, adress, tel, proffession)
	CC = CompteClient(soldeIni, numero, client)
	mabanque.ajouter(CC)


mabanque.afficheTotalBanque()