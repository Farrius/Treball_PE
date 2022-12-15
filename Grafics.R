## Gráfico de dispersión
quartz(height = 6, width = 18)
par(mfrow = c(1, 3), las = 1, font.lab = 4, font.axis = 3, cex.lab = 1.4,
    cex.axis = 1.3)
with(grups2122, plot(Casa2Fib2, Casa2Fib2, pch = 16, col = 1, cex = 1.5))

  
quartz(width = 9)
par(las = 1, font.lab = 4, font.axis = 3, cex.lab = 1.2,
    cex.axis = 1.1)
boxplot(Casa2Fib2 ~ Edat, data = grups2122, pch = 16, col = 5:6,
        ylab = "Quicksort")
title("Average salary per region")


