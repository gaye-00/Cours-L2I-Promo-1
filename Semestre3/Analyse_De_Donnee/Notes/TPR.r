##..............TP Regression Lineaire simple..................................##

##..EXERCICE 1:Nombre skieurs

#1.. saisir les donnes dans R sous forme d'un data.frame nomer ski 
ski=data.frame()              ## permet de reserver un tableau de jeux donnes vide 
ski=edit(ski)               
save(ski,file="ski.rdata")    ##entregistrer le jeu de donnees
y=ski$yi                    
x=ski$xi                      
attach(ski)                   ##faire reconnaitre les variables de Ski par le logiciel

#2.. Tracer le nuage de point
plot(x,y,col=2,xlab="Nombre skieurs", ylab="Nombres accidents")
#3.. Interpretation
#le nuage de point montre que les deux variables sont correllees lineaires.
# l'augmentation de la variable du nombre de skineurs entraine une augmentation du nombre d'accident

#4.. Calculons la somme
somxi=sum(x) ## calculer de la somme i=1 a 10 de xi  
somyi=sum(y) ## calculer de la somme i=1 a 10 de yi
somXiYi=sum(x*y) ## calculer la somme des xi et yi ie le produit
somYicarrer=sum(y^2) # le carer d'une somme de yi
somXicarrer=sum(x^2) # le carer d'une somme de xi
View(ski)
#5..Calculons dans R les extimations de la pente et de l'intercepte du modele(arrondir a 4 chiffres apres la virgule)
##calcule de la pente b=cov(x,y)/var(x)
n=length(x)
xbar=somxi/n
ybar=somyi/n
numcov=somXiYi/n-xbar*ybar
Denocov=somXicarrer/n-xbar^2
b=numcov/Denocov
##calcule de l'intercepte a=ybar-bxbar
a=ybar-b*xbar
##on arrondit a 4 chiffre apres la virgule
a=round(a,4) ## arrondire a a 4 chiffres apres la virgule
b=round(b,4) ## arrondire b a 4 chiffres apres la virgule
## ainsi on se tente de donner la droite de regresion : (y=50.737+ 0.0319x)

#6..on veut retrouver ses resultats avec la commande lm de R. quelles ligne de code doit-on ecrire pour verifier les resultats
reg=lm(y~x)  
summary(reg) 
names(reg) 


#7..a l'aide de l'objet renvoyer par la fonction lm de R conclure sur la significativite des parametres
# pente et intercepte et du model globale

## Conclure sur la significativite de la pente Nous allons effectuer un test bilateral  
    #on veut tester les hypotheses suivantes: {H0:br=0(pas de liaison lineaire)
    #                                         {H1:br<>0(on a une liaison lineaire)au seuil de 5% 
    #nous avons pour la pente la p-value qui vaut  p-value=1.27e-06 < 5%, donc on rejette HO ainsi
    #avec un risque de 5%, il y a bien une liaison lineaire 
    #de cela on en deduit une relation lineaire forte et tres significative entre le nombre de skieurs et le nombre d'accident 

## Conclure sur la significativite de l'intercepte Nous allons effectuer un test bilateral  
    #on veut tester les hypotheses suivantes: {H0:ar=0(pas de liaison lineaire)
    #                                         {H1:ar<>0(on a une liaison lineaire)au seuil de 5% 
    #nous avons pour l'intercepte la p-value qui vaut  p-value=0.00555<5%, donc on rejette HO ainsi
    #avec un risque de 5%, il y a bien une liaison lineaire 
    #de cela on en deduit une relation lineaire forte et tres significative entre le nombre de skieurs et le nombre d'accident 

##conclure sur le model globale comme il s'agit d'un seul variable donc on constate que la pvalue  du modele
##sera egale a la pvalue de la pente il dou mm conclusion
    

#9..Tracer la droite de regression sur le nuage de points.
##pour cela on utilise la fonction abline
abline(h=0,col="red")

## Au cour de la onzieme annees ,on observe 270 accidents pour 8000 skieurs.
## Calculer dans R l'intervalle de predition au niveau de confiance 95% pour x11=8000 ?
newx=data.frame
newx=c(8000,270)
predict(RDetailler,newdata = newx,interval = "Predition",level=0,95)