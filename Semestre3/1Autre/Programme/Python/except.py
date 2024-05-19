nombre1 = 150
nombre2 = input("Choisir un nombre pour diviser : ")

try:
	nombre2 = int(nombre2)
	print("Resultat : {}".format(nombre1 / nombre2))
except ZeroDivisionError:
	print("Vouz ne pouvez pas diviser par zero")
except ValueError:
	print("Vouz devez entrer un nombre !")
except:
	print("Valeur entrer est incorrecte")
finally:
	print("Fin du programme...")