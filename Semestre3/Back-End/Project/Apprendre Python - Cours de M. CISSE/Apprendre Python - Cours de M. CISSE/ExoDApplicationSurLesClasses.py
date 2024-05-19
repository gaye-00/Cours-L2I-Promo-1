#################### EXERCICE 1 #################### 
"""
Définir une classe nommé 'OperationSurDeuxEntiers' avec les propriétés suivantes: 'operande1' et 'operande2' (des entiers)
et operateur (un caractère). La classe posséde la méthode 'effectuerOperation()' permettant d'effectuer l'opération
correspondant à la valeur de l'attribut 'operateur' et d'afficher le résultat de l'opération.
"""

#################### EXERCICE 2 #################### 
"""
Un Point est défini par son abcisse (x) et son ordonné (y). Définir la classe Point et ajouter les méthodes pour:
- afficher un point
- additionner un point à un autre (donné en argument à la méthode). La méthode doit retourner un Point qui est la somme des 2 points
"""

#################### EXERCICE 3 #################### 
"""
Un étudiant est défini par son prénom, son nom, sa note de devoir, sa note d'examen et sa moyenne. Définir la classe
'Etudiant'. Dans son constructeur, initialiser les propriétés note devoir, note examen et moyenne à 0.0.

Ajouter dans la définition de la classe une méthode permettant de calculer la moyenne d'un étudiant selon la
formule moyenne = (note devoir + note examen) / 2 et une méthode permettant d'afficher un étudiant avec ses notes.

Définir ensuite une liste nommée 'classe' pour contenir une liste d'étudiant. Cette liste sera saisi par l'utilisateur.
Pour cela, le programme lui répète la demande de saisie d'un étudiant jusqu'à ce qu'il décide d'arrêter.

Un étudiant est instancié en donnant juste son prénom et son nom. C'est après avoir instancié un étudiant 
que ses 2 notes sont ajoutées par l'utilisateur. Il faudra gérer la saisi des notes par exception pour qu'elles 
soient valides, c'est à dire comprises entre 0.0 et 20.0).

Une fois tous les étudiants saisis, les moyennes sont calculées et seuls les étudiants ayant la moyenne seront affichés
"""

#################### EXERCICE 4 #################### 
"""
Définir une classe 'PointNom' dérivée de la classe Point permettant de manipuler des points définis par leurs
coordonnées et un nom. Redéfinir la méthode 'afficher()' pour afficher les coordonnées et le nom d'un point.
"""


#################### SOLUTION EXERCICE 1 #################### 
print("------------------- DEBUT D'EXECUTION DE L'EXERCICE 1 -------------------")
class OperationSurDeuxEntiers:
	def __init__(self, operande1, operateur, operande2):
		self.operande1 = operande1
		self.operateur = operateur
		self.operande2 = operande2

	def effectuerOperation(self):
		match self.operateur:
			case '+':
				print(self.operande1, " + ", self.operande2, " = ", self.operande1 + self.operande2)
			case '-':
				print(self.operande1, " - ", self.operande2, " = ", self.operande1 - self.operande2)
			case '*':
				print(self.operande1, " * ", self.operande2, " = ", self.operande1 * self.operande2)
			case '/':
				if self.operande2 == 0:
					print("Division par 0 impossible")	
				else:
					print(self.operande1, " / ", self.operande2, " = ", self.operande1 / self.operande2)
			case default:
				print("Opérateur inconnu")		

op = OperationSurDeuxEntiers(2, '+', 3)
op.effectuerOperation()
op.operateur = '/'
op.effectuerOperation()
op.operande2 = 0
op.effectuerOperation()
print("------------------- FIN D'EXECUTION DE L'EXERCICE 1 -------------------")

#################### SOLUTION EXERCICE 2 #################### 
print("------------------- DEBUT D'EXECUTION DE L'EXERCICE 2 -------------------")
class Point:
	def __init__(self, x, y):
		self.x = x
		self.y = y

	def afficher(self):
		print("Je suis le Point(", self.x,", ", self.y, ")")

	def additionner(self, point):
		return Point(self.x + point.x, self.y + point.y)

p1 = Point(2, 3)
p2 = Point(20, 30)
p3 = p1.additionner(p2)

p1.afficher()	
p2.afficher()	
p3.afficher()	
print("------------------- FIN D'EXECUTION DE L'EXERCICE 2 -------------------")

#################### SOLUTION EXERCICE 3 #################### 
print("------------------- DEBUT D'EXECUTION DE L'EXERCICE 3 -------------------")
#************ début de définition de la classe Etudiant ************
class Etudiant:
	def __init__(self, prenom, nom):
		self.prenom = prenom
		self.nom = nom
		self.devoir = 0.0
		self.examen = 0.0
		self.moyenne = 0.0

	def afficher(self):
		print("(", self.prenom, self.nom,", Devoir:", self.devoir,", Examen:", self.examen,", Moyenne:", self.moyenne, ")")

	def calculerMoyenne(self):
		self.moyenne = (self.devoir + self.examen) / 2

#************ fin de définition de la classe Etudiant ************

print("Saisie des étudiants de la classe")
classe = []	#Initialisation à vide de la liste des étudiants
while True:
	unPrenom = input("Donner le prénom de l'étudiant: ")
	unNom = input("Donner le nom de l'étudiant: ")
	unEtudiant = Etudiant(unPrenom, unNom)	#Instanciation d'un étudiant avec prénom et nom

	while True:		#Contrôle répétitif de la saisie pour que la note de devoir soit valide
		try:
			unEtudiant.devoir = float(input("Donner la note de devoir: "))	#Si la saisie n'est pas un nombre, exception
			if unEtudiant.devoir < 0 or unEtudiant.devoir > 20: #Si la saisie n'est pas entre 0 et 20, exception
				raise Exception()			
		except:
			print("Attention: Saisir un nombre entre 0 et 20 comme note")
		else:					
			break	#La sous boucle s'arrête dès que la note de devoir est valide

	while True:		#Contrôle répétitif de la saisie pour que la note d'examen soit valide
		try:
			unEtudiant.examen = float(input("Donner la note d'examen: "))	
			if unEtudiant.devoir < 0 or unEtudiant.devoir > 20: #Si la saisie n'est pas entre 0 et 20, exception
				raise Exception()		
			break	#La sous boucle s'arrête dès que la note d'examen est valide
		except:
			print("Attention: Saisir un nombre entre 0 et 20 comme note")			

	classe.append(unEtudiant)	#l'étudiant est ajoutée à la liste après son instanciation et saisie de ses notes

	reponse = input("Voulez-vous saisir un autre étudiant (O/N)? ")

	if reponse == "Non" or reponse == "non" or reponse == "N" or reponse == "n":
		break	#La grande boucle de saisie des étudiants s'arrête
print("Affichage des étudiants admis après calcul de leurs moyennes:")
for etu in classe:
	etu.calculerMoyenne()
	if etu.moyenne >= 10:
		etu.afficher()		
print("------------------- FIN D'EXECUTION DE L'EXERCICE 3 -------------------")

#################### SOLUTION EXERCICE 4 #################### 
print("------------------- DEBUT D'EXECUTION DE L'EXERCICE 4 -------------------")
class PointNom(Point):
	def __init__(self, x, y, nom):
		Point.__init__(self, x, y)
		self.nom = nom

	#Redéfinition de la méthode afficher()
	def afficher(self):
		print("Je suis le Point", self.nom, "(", self.x,", ", self.y, ")")
		

pn1 = PointNom(12, 54, "Point 1")
pn2 = PointNom(1, 5, "Point 2")
pn3 = pn1.additionner(pn2)
pn1.afficher()
pn2.afficher()
pn3.afficher()	#pn3 est un Point, pas un PointNom
print("------------------- FIN D'EXECUTION DE L'EXERCICE 4 -------------------")