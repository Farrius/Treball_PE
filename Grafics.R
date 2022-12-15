## Gráfico de dispersión
window(height = 6, width = 18)
par(mfrow = c(1, 3), las = 1, font.lab = 4, font.axis = 3, cex.lab = 1.4,
    cex.axis = 1.3)
with(prova_dades, plot(Quicksort, Insertionsort, pch = 16, col = 1, cex = 1.5))
title("Grafico de dispersion")
 
##boxplot 
window(width = 9)
par(las = 1, font.lab = 4, font.axis = 3, cex.lab = 1.2,
    cex.axis = 1.1)
boxplot(Quicksort ~ Insertionsort, data = prova_dades, pch = 16, col = 5:6,
        ylab = "Quicksort")
title("Boxplot")


##qqplot

