from datetime import date
import os

# Python3 code to calculate age in years
def calculerAge(birthDate):
	today = date.today()
	age = today.year - birthDate.year - ((today.month, today.day) < (birthDate.month, birthDate.day))
	return age
	
def dureeEntre2Date(birthDate, oneDate):
	age = oneDate.year - birthDate.year - ((oneDate.month, oneDate.day) < (birthDate.month, birthDate.day))
	return age	

