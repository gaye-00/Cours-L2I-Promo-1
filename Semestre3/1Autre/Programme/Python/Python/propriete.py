

class Humain:
	"""doc string"""

	def __init__(self, prenom, age):
		print("Creation d'un humain")
		self.prenom = prenom
		self._age = age

	def _getage(self):
		if self._age <= 1:
			return str(self._age) + " an"
		else:
			return str(self._age) + " ans"

	def _setage(self, nouvel_age):
		if(nouvel_age < 0):
			self._age = 0
		else:
			self._age = nouvel_age

	def _delage(self):
		del self._age

	age = property(_getage, _setage, _delage)


#Programme principale

age_personne = int(input("Donner l'age de Laye : "))

h1 = Humain("Laye", age_personne)

print("{} a {}".format(h1.prenom, h1.age))

#del h1.age
h1.age = 0

print("{} a {}".format(h1.prenom, h1.age))