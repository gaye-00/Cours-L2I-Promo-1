x=pnbdata[[2]]
y=pnbdata[[3]]
plot(x,y,xlab="PNB(x)",ylab="Conso Privee(y)",col="red")
#D'apres le nuage des points x et y sont lineaires.
#Ainsi l'augmentation de la consommation privee est liee a
#l'augmentation du PNB
sum(x)
#La somme des Xi est de 3941
sum(y)
#La somme des Yi est de 2403
sum(x*y)
#La somme des XiYi est de 1072665
sum(y*y)
#La somme des Yi**2 est de 654149
sum(x*x)
#La somme des Xi**2 est de 1759019
#

lm(x~y)
