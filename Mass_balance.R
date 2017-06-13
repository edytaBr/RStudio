#LOAD DATA SET
#austre1 - dataset from WGM - contains winter, summer and annual mass balance of 
#specific glacier
######################AUSTRE~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
library(readr)
austre <- read_delim("C:/Users/Edyta/Desktop/Alt_thesis/ba-bw-bs/austre.csv", 
                     ";", escape_double = FALSE, trim_ws = TRUE)
View(austre1)

#####################MIDTRE~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
library(readr)
midtre1 <- read_delim("C:/Users/Edyta/Desktop/Alt_thesis/ba-bw-bs/midtre1.csv", 
                      ";", escape_double = FALSE, trim_ws = TRUE)
View(midtre1)


##AUSTRE
par(mfrow=c(1,1)) #size of plot
austre_bar <- barplot(austre1$WINTER_BALANCE, ylim=c(-2000, 1000), col = "blue", main = " Austre Broggerbreen mass balance 1968 - 2016")
axis(side=1, at= austre_bar, seq(1968, 2016))
par(new=TRUE)
barplot(austre1$SUMMER_BALANCE, col = "red",add = TRUE)
barplot(austre1$ANNUAL_BALANCE, col = "orange",add = TRUE)

legend("bottom", 
       legend = c("winter", "summer", "annual"), 
       fill = c("blue", "red", "orange"), horiz = T, cex = 0.6, bty = "n")

#MIDTRE
par(mfrow=c(1,1)) #size of plot

midtre_bar <- barplot(midtre1$WINTER_BALANCE, ylim=c(-2000, 1000), col = "blue", main = " Midtre Lovénbreen mass balance 1968 - 2016")
axis(side=1, at= midtre_bar, seq(1968, 2016))
par(new=TRUE)
barplot(midtre1$SUMMER_BALANCE, col = "red",add = TRUE)
barplot(midtre1$ANNUAL_BALANCE, col = "orange",add = TRUE)

legend("bottom", 
       legend = c("winter", "summer", "annual"), 
       fill = c("blue", "red", "orange"), horiz = T, cex = 0.6, bty = "n")
