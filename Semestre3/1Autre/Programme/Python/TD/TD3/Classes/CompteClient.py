class Compte:
	def __init__(self, solde = 0):
		self.solde = solde

	def deposer(self, montant):
		self.solde += montant

	def retirer(self, montant):
		self.solde -= montant

	def virer(self, montant, compteDestinataire):
		self.retirer(montant)
		compteDestinataire.deposer(montant)

	def afficherSolde(self):
		print("Mon solde est:", self.solde)
