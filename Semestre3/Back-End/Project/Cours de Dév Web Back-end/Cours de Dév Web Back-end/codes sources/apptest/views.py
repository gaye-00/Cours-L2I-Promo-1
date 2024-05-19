from django.shortcuts import render, redirect, get_object_or_404
from django.contrib.auth.decorators import login_required
from . import db_access
from .models import CV, DemandeRecrutement
from .forms import DemandeRecrutementForm

# Create your views here.
def accueil(request):
	theUser = request.user
	unObjet = "Je suis un objet Python envoyé depuis une vue"
	return render(request,'apptest/accueil.html', {'unObjet': unObjet, 'theUser': theUser})

@login_required
def developpeurs(request):
	theUser = request.user
	liste_developpeurs = db_access.getCVs()
	return render(request,'apptest/developpeurs.html', {'developpeurs': liste_developpeurs, 'theUser': theUser})

@login_required
def cv(request, idCV):
	theUser = request.user
	try:
		idCV = int(idCV)
		unCV = get_object_or_404(CV, id=idCV)
	except:
		return redirect('/apptest/developpeurs')	
	return render(request,'apptest/cv.html', {'unCV': unCV, 'theUser': theUser})

@login_required
def recruter(request, idCV):
	form = DemandeRecrutementForm(request.POST or None)
	theUser = request.user
	try:
		idCV = int(idCV)
		theCV = get_object_or_404(CV, id=idCV)
	except:
		return redirect('/apptest/developpeurs')	
	if form.is_valid():
		try:
			#instanciation d'un objet DemandeRecrutement directement à partir des données du formulaire
			unRecrutement = form.save(commit=False)
			#Ajout de la valeur de l'attribut 'utilisateur' dans l'objet, puisqu'il n'est pas dans le formulaire
			unRecrutement.utilisateur = theUser
			#Ajout de la valeur de l'attribut 'candidat_a_recruter' dans l'objet, puisqu'il n'est pas dans le formulaire
			unRecrutement.candidat_a_recruter = theCV
			#écriture dans la base de données de l'objet
			unRecrutement.save()
		except:
			pass
		return redirect('/apptest/mes_recrutements')		
	return render(request,'apptest/recruter.html', {'form': form, 'theCV': theCV, 'theUser': theUser})	

@login_required
def mes_recrutements(request):
	theUser = request.user
	recrutements = db_access.recrutementsDunRecruteur(theUser)
	return render(request,'apptest/mes_recrutements.html', {'recrutements': recrutements, 'theUser': theUser})

@login_required
def modifier_recrutement(request, idRecrutement):
	theUser = request.user
	try:
		idRecrutement = int(idRecrutement)
		theRecrutement = get_object_or_404(DemandeRecrutement, id=idRecrutement)				
	except:
		return redirect('/apptest/mes_recrutements')
	#Si la demande que l'utilisateur tente de modifier n'est pas la sienne, la modification n'aboutit pas
	if db_access.demandeEstElleFaitePar(theUser, theRecrutement) == False:
		return redirect('/apptest/mes_recrutements')
	try:
		#instanciation du formulaire à partir de l'objet 'theRecrutement'
		form = DemandeRecrutementForm(request.POST or None, instance=theRecrutement)
		if form.is_valid():
			theRecrutement = form.save(commit=False)
			theRecrutement.save()
			return redirect('/apptest/mes_recrutements')
		return render(request,'apptest/modifier_recrutement.html', {'form': form, 
			'theCV': theRecrutement.candidat_a_recruter, 'theUser': theUser})
	except:
		return redirect('/apptest/mes_recrutements')
	return redirect('/apptest/mes_recrutements')
		

@login_required
def supprimer_recrutement(request, idRecrutement):
	theUser = request.user
	try:
		idRecrutement = int(idRecrutement)
		theRecrutement = get_object_or_404(DemandeRecrutement, id=idRecrutement)
		#Si la demande que l'utilisateur tente de supprimer n'est pas la sienne, la suppression n'aboutit pas
		if db_access.demandeEstElleFaitePar(theUser, theRecrutement):
			theRecrutement.delete()
	except:
		pass
	return redirect('/apptest/mes_recrutements')		