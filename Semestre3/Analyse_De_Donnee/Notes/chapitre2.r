# Modèle de regression linéaire simple
Y = cigarettedata[[2]]
X = cigarettedata[[3]]
plot(X,Y,xlab="Goudron (mg)",ylab = "Monoxyde de carbone (mg)",col=2)
#Au vue de ce nuage de point, les deux variables 
#semblent être liées de façon linéaire.
#Lorsque la quantité de goudron augmente 
#la quantité de monoxyde de carbone augmente aussi
#On veut tester H0:r=0 (pas de liaison linéaire)
#contre H1 : r<>0 (liaison linéaire)
#Ce test s'effectue comme suit :
cor.test(X,Y)
# la p.value=6.55 10^-14 < 5%, donc on rejette HO
# Donc avec un risque de 5%, il y a bien
#une liaison linéaire. Ainsi, on peut effectuer
#une régression linéaire simple

abline(2.74328,0.80098,col=4)


result = lm(Y~X)
summary(result)
# Regression linéaire multiple
#1) Analyse exploratoire
DATA = basePIB[-1]
library(lattice)
splom(DATA)
attach(basePIB)
reg = lm(PIBt~FBCt+DNBt+DCFMt+DCFAPt+AVAt+RIBt)
summary(reg)
