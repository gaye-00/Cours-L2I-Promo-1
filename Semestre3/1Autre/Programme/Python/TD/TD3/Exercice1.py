"""
	La methode virement fonctionne en fesant appelle a deux autre methodes
	qui sont retirer et deposer. Elle prend comme parametre aussi le motant
	et le compte destinataire. Elle fait appelle a retirer pour retirer
	la nouvelle somme et deposer pour deposer la nouvelle somme aussi dans 
	le compte destinataire.
	Elle fait intervenir deux comptes a savoir le compte ou on doit
	retirer l'argent et le compte ou doit deposer l'argent.
"""

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


# Programme principal
compte1 = Compte()
compte2 = Compte()

compte1.deposer(500)
compte2.deposer(1000)

compte1.afficherSolde()
compte2.afficherSolde()

compte2.retirer(10)
compte1.virer(75, compte2)

print()
compte1.afficherSolde()
compte2.afficherSolde()

compte_list = list()
for i in range(10):
	compte_list.append(Compte(200 + i*100))


# Tirer de la correction classe
for x in range(10):
	for y in range(x+1, 10):
		compte_list[x].virer(20, compte_list[y])

print()
for cmp in compte_list:
	cmp.afficherSolde()



#----------------------------------------------------------------------------------------------
# Old
"""
	cmp0 = Compte(200)
cmp1 = Compte(200)
cmp2 = Compte(200)
cmp3 = Compte(200)
cmp4 = Compte(200)
cmp5 = Compte(200)
cmp6 = Compte(200)
cmp7 = Compte(200)
cmp8 = Compte(200)
cmp9 = Compte(200)
compte_list = [cmp0, cmp1, cmp2, cmp3, cmp4, cmp5, cmp6, cmp7, cmp8, cmp9]
#compte_list.append(compte2)

#compte_list = []

for i in range(9):
	#cmp{}.format(i) = Compte()
	cmp = Compte()
	#compte_list.append(cmp"{}".format(i) = Compte())
	#compte_list.append("cmp{}".format(i))
"""