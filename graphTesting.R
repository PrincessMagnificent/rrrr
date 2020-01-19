#histogramTEST
# Create data for the graph.
v <-  c(9,13,21,8,36,22,12,41,31,33,19)

# Give the chart file a name.
png(file = "histogram.png")

# Create the histogram.
hist(v,xlab = "Weight",col = "yellow",border = "blue")

# Save the file.
dev.off()


boxplot(x, data, notch, varwidth, names, main)
boxplot(copydata$Cena, notch = FALSE, ylab = "Cena (USD)", main="Cena")
boxplot(copydata$Cena)

boxplot(copydata$Velikost, notch = FALSE, ylab = "Velikost (MB)", main="Velikost programa")

plot(copydata$Velikost, copydata$Cena, main="Cena programa v odvisnosti od Velikosti", xlab="Velikost(MB)", ylab="Cena(USD)")
library(car)
install.packages(car)

scatterplot(Velikost ~ Cena, data = copydata, main ="Velikost / Cena")
###

x <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)
y <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)

# Apply the lm() function.
relation <- lm(y~x)

print(relation)


lm(formula = y ~ x)#####
x <- copydata$Cena
y <- copydata$Velikost
# Plot with main and axis titles
# Change point shape (pch = 19) and remove frame.
plot(x, y, main = "Main title",
     xlab = "X axis title", ylab = "Y axis title",
     pch = 19, frame = FALSE)
# Add regression line
plot(x, y, main = "Main title",
     xlab = "X axis title", ylab = "Y axis title",
     pch = 19, frame = FALSE)
abline(lm(y ~ x, data = mtcars), col = "blue")
