# Cas où X et Y sont quantitatifs
# Exemple : Etude de la liaison entre Age et Diamètre
age = 1:7
diam = c(3,5,10,11,17,18,20)
# Nuage de points
plot(age,diam,xlab="Age (années)",ylab = "Diamétre (cm)",col="red")
cor(age,diam) 
# Le nuage montre que les variables age et diamètre sont linéaire.
# Si l'une des variables augmente l'autre augmente aussi
# le coefficient de corrélation r= 0.9844952 qui est très 
# proche de 1 montre les deux variables sont fortement
# positivement corrélées.

# On veut tester H0 : r=0 (pas de liaison linéaire) 
# contre H1 : r¡=0 (liaison linéaire) au seuil de 5%  

cor.test(age,diam)

# la p.value du test est égale à 5.702.10^-5 qui est inférieure
# à 5%, donc on rejette H0. 
# Avec un risque de 5%, les deux variables sont liées
#linéairement

# Cas où X qualitatif et Y quantitatif
femme =c(2.8,3,3,3.2,3.3)
homme=c(3,3.2,3.4,3.6)
boxplot(femme,homme,col=c("green","orange"))
# Au vue de ce graphique, on observe une différence visible 
#entre les boites à moustaches, donc il y a bien une influence
# de la variable sexe sur la variable poids.
