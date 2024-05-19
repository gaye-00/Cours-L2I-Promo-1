from datetime import datetime
from datetime import date
"""
En Pascal, le type enregistrement (record) permet d'avoir une 'variable' qui englobe en son sein d'autres variables.

Il permet de définir des entités (ou des objets) du monde réel comme des classes, des cours, des étudiants,
des personnes, des enseignants, etc.

Ces objets comportent un ensemble de données sur eux, mais n'ont pas d'autonomie et n'on aucun contrôle sur leurs données.

En effet, les traitements sur les données d'un objet de type enregistrement sont fait à l'extérieur de l'objet,
dans des fonctions externes et l'enregistrement n'a aucun contrôle sur les traitements effectués sur ses propores
données.

Les classes sont, dans les langages de Programmation Orientée Objet (POO) une façon d'étendre les enregistrements
en incorporant au sein des objets, à la fois les données propores aux objets, mais aussi les traitements sur ces données.

C'est une façon de rendre les objets "autonomes": ce sont les objets qui effectuent des traitements sur les données.

Les données d'un objet sont appelées "propriétés" ou "attributs" et les traitements sur ces données sont
appelés "méthodes".

En Pascal, un record est un type à définir par le programmeur. Dans les langages de POO, c'est aussi au programmeur
de définir ses classes. Pour manipuler un record dans Pascal, le programme déclare ensuite des variables de tu type
record défini. Pour utiliser une classes aussi, le programme doit définir des variables du type de sa classe.
Ces variables sont appelées objet et le terme exact est: "instancier des objets" et non "déclarer des objets".
"""

############ CREATION D'UNE CLASSE ############
"""
Pour créer une classe, utilisez le mot clé class:
"""
#Cette déclaration est une classe appelée 'MaClasse' avec une seule propriété appelée 'unePropriete' dont la valeur est initialisée à 20
#La classe ne comporte pas de méthode actuellement
class MaClasse:
	uneProriete = 20

############ INSTANCIATION D'UN OBJET ############
"""
Nous pouvons maintenant utiliser la classe nommée MaClasse pour instancier des objets :
"""
#L'objet suivant s'appelle 'm' et on imprime ensuite la valeur de sa proriété 'unePropriete'
m = MaClasse()
print("m.uneProriete = ", m.uneProriete)

############ CONSTRUCTEUR D'UNE CLASSE ############
"""
En Pascal, avec un enregistrement 'personne' dont les champs sont 'nom', 'prenom', et 'age'; Pour donner des
valeurs à ces champs dans une variable 'per' de type 'personne', il faut procéder comme suit:
per.nom:='cisse'; per.prenom:='Papa'; per.age:=20;

Avec les classes, puisqu'on a dit que les traitements sur les données d'un objet doivent se faire à travers des
méthodes de la classe de l'objet, il faut donc prévoir une ou des méthodes particulière(s) pour s'occuper de 
la construction des objets d'une classe et donc de l'initialisation des valeurs de ses propriétés: ces méthodes
sont appelées "constructeur".

En Python, le constructeur d'une classe est donné avec la méthode '__init__()'

Toutes les classes ont la méthode  __init__(), qui est toujours exécutée lorsque la classe est lancée.

Utilisez la méthode __init__() pour affecter des valeurs aux propriétés de l'objet ou à d'autres opérations 
nécessaires lors de la création de l'objet :
"""

#La classe suivante définit une personne et les propriétés de la classe sont listées à l'intérieur du constructeur:
#'nom', 'prenom' et 'age'. Le mot clé 'self' devant les propriétés fait référence à l'objet qui est en train d'être
#quan on l'instancie. Vous remarquez aussi le constructuer prend des paraètres en entrée qui vont servir à initialiser
#les propriétés. Le premier argument 'self' représente toujours l'objet à instancier.
#Il n'est pas obligatoire de le nommer 'self', vous pouvez l'appeler comme vous voulez, mais elle doit être le premier 
#paramètre de n'importe quelle méthode de la classe :
class Personne():
	def __init__(self, nom, prenom, age):
		self.nom = nom
		self.prenom = prenom
		self.age = age

#Pour instancier un objet de cette classe 'Personne', on écrit
per = Personne('CISSE', 'Papa Alioune', 20)
print("Je suis ", per.prenom, per.nom, "et j'ai", per.age, "ans")
#Vous remarquez que l'instanciation ne se fait en faisant appel au constructuer, mais à la classe à qui on passe les arguments du constructeur
#Vous remarquez qu'il n'y a pas d'argument pour la propriété 'self' du constructeur. Il désignait l'objet qui est
#instancié (ici, il s'agit de l'objet référencé par 'per').

############ AUTRES METHODES D'UNE CLASSE ############
"""
Une classe peut contenir autant de méthodes que le désire le programme.
"""
#Dans la reprise de la classe 'Personne', l'affichage des personne est incorporé dans la classe
class Personne():
	def __init__(self, nom, prenom, age):
		self.nom = nom
		self.prenom = prenom
		self.age = age

	def afficher(self):
		print("Je suis ", self.prenom, self.nom, "et j'ai", self.age, "ans")

per1 = Personne('CISSE', 'Papa Alioune', 20)
per1.afficher()

per2 = Personne('FOFANA', 'Moussa', 50)
per2.afficher()

############ QUELQUES OPERATIONS AVEC LES OBJETS ############
#Modifier la valeur d'une propriété d'un objet
per1.age = 30
per1.afficher()

#Supprimer une propriété d'un objet
del per1.nom
print("Après suppression de la propriété nom de per1")
per2.afficher()
#per1.afficher()	#après avoir vu l'erreur, commentez cette instruction pour que le programme continue de s'exécuter
#Vous remarquez que l'objet per1 n'a plus la propriété nom, mais l'objet per1 l'a toujours

#Supprimer d'un objet
del per2
print("Après suppression de l'objet per2")
#per2.afficher()	#après avoir vu l'erreur, commentez cette instruction pour que le programme continue de s'exécuter


############ NOTIONS D'HERITAGE ############
"""
L'héritage permet de définir une classe 'ClasseFille' à partir d'une classe 'ClasseMere'. La classe 'ClasseFille'
hérite de toutes les propriétés et méthodes de la classe 'ClasseMere'. Autrement dit, la classe 'ClasseFille'
aura toutes les propriétés et méthodes de 'ClasseMere' sans avoir besoin de les récrire en son sein. Elle peut
avoir d'autres propriétés et méthodes supplémentaires que la 'ClasseMere' n'a pas.

La classe mère, appelée aussi classe parent est la classe dont on hérite, également appelée classe de base.

La classe fille, appelée aussi classe enfant est la classe qui hérite d'une autre classe, également appelée classe dérivée.

Par exemple, on sait que toutes personne possède un prénom, un nom et une date de naissance. On peut aussi
calculer l'âge d'une personne (méthode 'age()').

Un étudiant est une personne qui possède en plus une note de devoir, une note d'examen et une moyenne. On peut
aussi calculer sa moyenne à partir de ses 2 notes (méthode 'claculerMoyenne()')
"""
class Personne2:
	def __init__(self, prenom, nom, naissance):
		self.prenom = prenom
		self.nom = nom
		self.naissance = naissance

	def age(self):
		today = date.today()	#La date du jour
		birthDate = datetime.strptime(self.naissance, "%d-%m-%Y").date()
		age_ = today.year - birthDate.year - ((today.month, today.day) < (birthDate.month, birthDate.day))
		return age_

	def afficher(self):
		print("Je suis ", self.prenom, self.nom, type(self), "et j'ai", self.age(), "ans")

"""
Pour créer une classe qui hérite des fonctionnalités d'une autre classe, envoyez la classe parent en tant que 
paramètre lors de la création de la classe enfant :
"""
class Etudiant(Personne2):
	def __init__(self, prenom, nom, naissance, noteDevoir, noteExmen):
		Personne2.__init__(self, prenom, nom, naissance)	#Appel du constructeur de la classe Personne2
		self.noteDevoir = noteDevoir
		self.noteExmen = noteExmen
		self.moyenne = 0.0

	def calculerMoyenne(self):
		self.moyenne = (self.noteDevoir + self.noteExmen) / 2

	#Redéinition de la méthode 'afficher()'de Personne2
	def afficher(self):
		print("Je suis ", self.prenom, self.nom, type(self),"et j'ai", self.age(), "ans, devoir:", self.noteDevoir, "exame:", self.noteExmen, "Moyenne:", self.moyenne)

per = Personne2("Papa Alioune", "CISSE", "01-01-2010")
per.afficher()

etu = Etudiant("Mamadou", "NDIAYE", "11-12-2000", 12, 15)
etu.calculerMoyenne()
etu.afficher()