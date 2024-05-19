#coding:utf-8

"""
Creation de dictionnaire    : dico = {} #Vide
						      dico = {<cle:valeur>, <cle2:valeur>}
Accés à une valeur		    : dico[<cle>]
Ajout et modification       : dico[<cle>] = <valeur>

suppression		  		    : dico.pop("cle")	
						    : del dico[cle]
Recuper la cle et la valeur : for var1 var2 in dico.items():
Recuper la cle 				: for var in dico.keys():
Recuper la valeur			: for var in dico.value():
Suppression dictionnare     : dico.clear()

"""


#---------------------------Programme Principal---------------------------

dico = {"Chat" : "C'est un felin", "Chien" : "C'est le meilleur ami de l'homme"}
print(dico)


#Suppression d'un element
print("\nApres suppression de l'element Chat dans le dictionnaire")
dico.pop("Chat")
print(dico)

# Ajout d'un element
print("\nAjout d'un element")
dico["homme"] = "Probleme de la societe"
print(dico)

# Modification d'un element
print("\nApres modification de l'homme")
dico["homme"] = "Le premier Probleme sur terre"
print(dico)

# Recuper les deux valeurs
print()
for k,v in dico.items():
	print("{} : ({}) ".format(k,v))


print("\nLes cles")
for k in dico.keys():
	print(k)

print("\nLes valeurs")
for v in dico.values():
	print(v)

print("\nApres suppression de la dictionnaire")
dico.clear()
print(dico)

