from django.db import models
from accounts import models as acc_models
from django.utils import timezone
#Installer le module django_currentuser: pip install django_currentuser
from django_currentuser.db.models import CurrentUserField
from . import utilities

# Create your models here.
class Ville(models.Model):
	code_ville = models.CharField(max_length=50, verbose_name="Code de la ville")
	nom_ville = models.CharField(max_length=150, verbose_name="Nom de la ville")
	def __str__(self):
		return self.nom_ville

class Poste(models.Model):
	code_poste = models.CharField(max_length=50, verbose_name="Code du poste")
	nom_poste = models.CharField(max_length=150, verbose_name="Nom du poste")
	def __str__(self):
		return self.nom_poste

class TempsDeTravail(models.Model):
	code_temps = models.CharField(max_length=50, verbose_name="Code du temps de travail")
	libelle_temps = models.CharField(max_length=150, verbose_name="Libellé du temps de travail")
	def __str__(self):
		return self.libelle_temps

class ExperienceProfessionnelle(models.Model):
	titre_experience = models.CharField(max_length=100, verbose_name="Titre de l'expérience")
	debut_experience = models.DateField(verbose_name = "Début de l'expérience")
	fin_experience = models.DateField(verbose_name = "Fin de l'expérience")
	duree_experience = models.IntegerField(null=True, blank=True)
	details_experience = models.CharField(max_length=500, verbose_name="Détails de l'expérience")
	
	def __str__(self):
		return self.titre_experience

	def duree_experience(self):
		return utilities.dureeEntre2Date(self.debut_experience, self.fin_experience)

class Formation(models.Model):
	titre_formation = models.CharField(max_length=100, verbose_name="Titre de la formation")
	debut_formation = models.DateField(verbose_name = "Début de la formation")
	fin_formation = models.DateField(verbose_name = "Fin de la formation")
	duree_formation = models.IntegerField(null=True, blank=True)
	details_formation = models.CharField(max_length=500, verbose_name="Détails de la formation")
	def __str__(self):
		return self.titre_formation

class Education(models.Model):
	titre_education = models.CharField(max_length=100, verbose_name="Titre de l'éducation")
	debut_education = models.DateField(verbose_name = "Début de l'éducation")
	fin_education = models.DateField(verbose_name = "Fin de l'éducation")
	duree_education = models.IntegerField(null=True, blank=True)
	details_education = models.CharField(max_length=500, verbose_name="Détails de l'éducation")
	def __str__(self):
		return self.titre_education

class LangueEtHobbie(models.Model):
	titre_element = models.CharField(max_length=100, verbose_name="Titre de l'élément")
	details_element = models.CharField(max_length=500, verbose_name="Détails de l'élément")
	def __str__(self):
		return self.titre_element

class CV(models.Model):
	prenom_candidat = models.CharField(max_length=50, verbose_name="Prénom du candidat")
	nom_candidat = models.CharField(max_length=50, verbose_name="Nom du candidat")
	date_naissance = models.DateField(verbose_name = "Date de naissance du candidat")
	adresse_candidat = models.CharField(max_length=150, verbose_name="Adresse du candidat")
	mail_candidat = models.EmailField(max_length=150, verbose_name="Email du candidat", null=True, blank=True)
	telephone_candidat = models.CharField(max_length=20, verbose_name="Téléphone du candidat", null=True, blank=True)
	profession_candidat = models.CharField(max_length=100, verbose_name="Profession du candidat", null=True, blank=True)
	experiences = models.ManyToManyField(ExperienceProfessionnelle, verbose_name="Expériences professionnelles")
	formations = models.ManyToManyField(Formation, verbose_name="Formations")
	educations = models.ManyToManyField(Education, verbose_name="Educations")
	langues_et_hobbies = models.ManyToManyField(LangueEtHobbie, verbose_name="Langues et hobbies")
	def __str__(self):
		return self.prenom_candidat + " " + self.nom_candidat

	def getFormations(self):
		return self.formations.all()	
	
	def getExperiences(self):
		return self.experiences.all()

	def getEducations(self):
		return self.educations.all()

	def getLangueEtHobbies(self):
		return self.langues_et_hobbies.all()

	def age(self):
		return utilities.calculerAge(self.date_naissance)

	def anneesDExperiences(self):
		nb_annees = 0
		for e in self.experiences.all():
			nb_annees = nb_annees + e.duree_experience()
		return nb_annees	

class DemandeRecrutement(models.Model):
	utilisateur = CurrentUserField()
	candidat_a_recruter = models.ForeignKey(CV, on_delete=models.CASCADE)
	nom_entreprise = models.CharField(max_length=50, verbose_name="Nom de l'entreprise")
	adresse_entreprise = models.CharField(max_length=150, verbose_name="Adresse de l'entreprise")
	ville_entreprise = models.ForeignKey(Ville, on_delete=models.CASCADE, verbose_name="Ville de l'entreprise")
	poste_propose = models.ForeignKey(Poste, on_delete=models.CASCADE, verbose_name="Poste proposé")
	temps_de_travail = models.ForeignKey(TempsDeTravail, on_delete=models.CASCADE, verbose_name="Temps de travail proposé")
	date_demarrage = models.DateField(verbose_name = "Date de démarrage")
	commentaire = models.CharField(max_length=250, verbose_name="Un commentaire ?", null=True, blank=True)
	salaire_propose = models.FloatField(verbose_name="Salaire proposé", null=True)
	date_demande = models.DateTimeField(default=timezone.now)
	def __str__(self):
		return self.nom_entreprise + "<==>" + self.candidat_a_recruter.prenom_candidat + self.candidat_a_recruter.nom_candidat
