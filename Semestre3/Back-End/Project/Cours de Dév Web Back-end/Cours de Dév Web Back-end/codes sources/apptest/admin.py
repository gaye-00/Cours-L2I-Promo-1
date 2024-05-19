from django.contrib import admin
from apptest.models import Ville, Poste, TempsDeTravail, CV, ExperienceProfessionnelle, Formation, Education, LangueEtHobbie, DemandeRecrutement

# Register your models here.
@admin.register(Ville)
class VilleAdmin(admin.ModelAdmin):
	list_display = ('code_ville', 'nom_ville')
	search_fields = ('nom_ville',)
	list_filter = ('nom_ville',)

@admin.register(Poste)
class PosteAdmin(admin.ModelAdmin):
	list_display = ('code_poste', 'nom_poste')
	search_fields = ('nom_poste',)
	list_filter = ('nom_poste',)

@admin.register(TempsDeTravail)
class TempsDeTravailAdmin(admin.ModelAdmin):
	list_display = ('code_temps', 'libelle_temps')
	search_fields = ('libelle_temps',)
	list_filter = ('libelle_temps',)	

@admin.register(CV)
class CVAdmin(admin.ModelAdmin):
	list_display = ('prenom_candidat', 'nom_candidat')
	search_fields = ('prenom_candidat',)
	list_filter = ('nom_candidat',)		

@admin.register(ExperienceProfessionnelle)
class ExperienceProfessionnelleAdmin(admin.ModelAdmin):
	list_display = ('titre_experience', 'debut_experience', 'fin_experience')
	search_fields = ('titre_experience',)
	list_filter = ('titre_experience',)			

@admin.register(Formation)
class FormationAdmin(admin.ModelAdmin):
	list_display = ('titre_formation', 'debut_formation', 'fin_formation')
	search_fields = ('titre_formation',)
	list_filter = ('titre_formation',)	

@admin.register(Education)
class EducationAdmin(admin.ModelAdmin):
	list_display = ('titre_education', 'debut_education', 'fin_education')
	search_fields = ('titre_education',)
	list_filter = ('titre_education',)	

@admin.register(LangueEtHobbie)
class LangueEtHobbieAdmin(admin.ModelAdmin):
	list_display = ('titre_element', )
	search_fields = ('titre_element',)
	list_filter = ('titre_element',)		

@admin.register(DemandeRecrutement)
class DemandeRecrutementAdmin(admin.ModelAdmin):
	list_display = ('candidat_a_recruter', 'nom_entreprise', 'poste_propose', 'date_demarrage')
	search_fields = ('candidat_a_recruter', )
	list_filter = ('candidat_a_recruter', )