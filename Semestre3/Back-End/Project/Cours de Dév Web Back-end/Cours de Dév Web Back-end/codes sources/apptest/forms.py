from django import forms
from .models import DemandeRecrutement

class DemandeRecrutementForm(forms.ModelForm):
	class Meta:
		model = DemandeRecrutement
		fields = ('nom_entreprise', 'adresse_entreprise', 'ville_entreprise', 'poste_propose', 'temps_de_travail',
			'date_demarrage', 'commentaire', 'salaire_propose')
		widgets = {
			'adresse_entreprise': forms.Textarea(attrs={'rows': 2, 'class': 'form-control'}),
			'commentaire': forms.Textarea(attrs={'rows': 2, 'class': 'form-control'}),
			'nom_entreprise': forms.TextInput(attrs={'type': 'text', 'class': 'form-control'}),
			'salaire_propose': forms.TextInput(attrs={'type': 'number', 'class': 'form-control'}),
			'date_demarrage': forms.TextInput(attrs={'type': 'date',
													'class': 'form-control date-picker',
													}),
			'ville_entreprise': forms.Select(attrs={'class': 'chosen-select form-control'}),
			'temps_de_travail': forms.Select(attrs={'class': 'chosen-select form-control'}),
			'poste_propose': forms.Select(attrs={'class': 'chosen-select form-control'}),
		}