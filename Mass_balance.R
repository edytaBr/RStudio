par(mfrow=c(1,1)) #size of plot
austre_bar <- barplot(austre1$WINTER_BALANCE, ylim=c(-2000, 1000), col = "blue", main = " Austre Broggerbreen mass balance 1968 - 2016")
axis(side=1, at= austre_bar, seq(1968, 2016))
par(new=TRUE)
barplot(austre1$SUMMER_BALANCE, col = "red",add = TRUE)
barplot(austre1$ANNUAL_BALANCE, col = "orange",add = TRUE)

legend("bottom", 
       legend = c("winter", "summer", "annual"), 
       fill = c("blue", "red", "orange"), horiz = T, cex = 0.6, bty = "n")

#austre1 - dataset from WGM - contains winter, summer and annual mass balance of 
#specific glacier