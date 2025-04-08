# visualize.R

# Génération de données : sinusoïde avec bruit
set.seed(42)
x <- seq(0, 4 * pi, length.out = 200)
y <- sin(x) + rnorm(200, sd = 0.2)

# On trace les points de données
plot(x, y, 
     main = "Signal sinusoïdal bruité",
     xlab = "x", 
     ylab = "sin(x) + bruit", 
     pch = 19, 
     col = rgb(0.2, 0.4, 0.6, 0.5))

# On ajoute une ligne lissée pour la tendance générale
lines(lowess(x, y), col = "red", lwd = 2)
