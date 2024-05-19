from .models import CV, DemandeRecrutement

#Cette fonction permet de récupérer (depuis la base de données) et de retourner la liste de tous les CVs (développeurs)
def getCVs():
	return CV.objects.all()

#Cette fonction permet de récupérer (depuis la base de données) et de retourner la liste de toutes les demandes de recrutements effectuées par un recruteur (passé en paramètre)
def recrutementsDunRecruteur(recruteur):
	return DemandeRecrutement.objects.filter(utilisateur=recruteur).order_by('-date_demande')

#Cette fonction permet de vérifier si une demande de recrutement (paramètre "demande")
#est effectuée par un recruteur (paramètre "recruteur")
def demandeEstElleFaitePar(recruteur, demande):
	#récupération de toutes les demandes du recruteur
	demandes = DemandeRecrutement.objects.filter(utilisateur = recruteur)
	if demande in demandes:
		return True
	return False