"""
Creation d'un ensemble		: ensemble = {var1, var2, var3}
longueur 					: len(ensemble)

accee à un ensemble 		: print(var in ensemble) # return booleen
							: for element in ensemble:
								print(element)
Ajout d'un element 			: ensemble.add(var)
Ajout d'un ensemble 		: ensemble1.update(ensemble2)
							: ensemble1.union(ensemble2)
Suppression d'elements  	: ensemble.remove(element)
							: ensemble.discard(element)
							: ensemble.pop() # Supprime le dernier element
Supprimer tout l'ensemble 	: ensemble.clear()
Intersection				: ensemble1.intersection(ensemble2)
Union 						: ensemble1.symmetric_difference(ensemble2)


NB: Les ensembles peuvent etre de differente type (entier, boolean, chaine...)
On ne peut pas acceder aux elements d'un ensemble en ce referent à un index
ou une clé

"""
ensemble1 = {"homme", "femme", "enfant"}
ensemble2 = {"moi", "toi", "surmoi"}
ensemble3 = {True, False}

print("Les elements des trois ensembles")
print(ensemble1)
print(ensemble2)
print(ensemble3)

print("\nLa longueur de ensemble1 = {}".format(len(ensemble1)))

print("\nVerier si homme est dans l'ensemble1")
print("homme" in ensemble1)

# Autre methode pour chercher un element dans un ensemble
print("\nVerier si moi est dans l'ensemble2")
for moi in ensemble2:
	print("\nmoi")
	break

# Ajout d'un element dans l'ensemble1
print("\nAjout de l'element 'vieux' dans l'ensemble1")
ensemble1.add("vieux")
print(ensemble1)


print("\nFusion de deux ensembles 2 et 3")
ensemble2.update(ensemble3)
print(ensemble2)

print("\nSuppression de l'element 'enfant'")
ensemble1.remove("enfant")
print(ensemble1)


print("\nSuppression des ensembles")
ensemble1.clear()
ensemble2.clear()
ensemble3.clear()

print(ensemble1)