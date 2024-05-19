## Saisir les donnees
## ski = data.frame()
## ski = edit(ski)
## ski = date.frame(Annee = c( , ), xi = c( ), yi = c(  ))
## save(ski, file = "ski.rdate")

## x = ski$xi
## Y = ski$yi

x = ski[[2]]
y = ski[[3]]

plot(x, y, col=2, xlab = "Nombre de skieurs", ylab = "Nombre d'accident")

# On constate que le nombre d'accident augment
# Si nombre de skieurs l'est aussi.
## Le nuage de pionts montre qui les deux variables sont correlées linéairement
## Une augmentaion de nb skieurs entraine une augmentation du nb d'accidents.

somxi = sum(x)
somyi = sum(y)
somxiyi = sum(x*y)
somyicarre = sum(y^2)
somxicaree = sum(x*x)

####

xbar = somxi / n
ybar = somyi / n
Numb = somxicaree / n - xbar^2
