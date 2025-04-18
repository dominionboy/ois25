# visualize.R

# G�n�ration de donn�es : sinuso�de avec bruit
set.seed(42)
x <- seq(0, 4 * pi, length.out = 200)
y <- sin(x) + rnorm(200, sd = 0.2)

# On trace les points de donn�es
plot(x, y, 
     main = "Signal sinuso�dal bruit�",
     xlab = "x", 
     ylab = "sin(x) + bruit", 
     pch = 19, 
     col = rgb(0.2, 0.4, 0.6, 0.5))

# On ajoute une ligne liss�e pour la tendance g�n�rale
lines(lowess(x, y), col = "red", lwd = 2)
