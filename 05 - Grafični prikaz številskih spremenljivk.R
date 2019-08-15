#Èe smo R že zaprli, ponovno

#Doloèimo delovni direktorij:

setwd("D:/STAT1 RST 18-19/Vaje/Vaje 6")

#Naložimo podatke v delovni prostor

load("podatki6.Rda")

####################################################################

#Osnovni grafièni prikaz: toèkovni diagram

plot(podatki6$Cena,podatki6$Povrsina,type="b")

plot(podatki6$Cena,podatki6$Povrsina,type="b",xlab="Cena stanovanja",ylab="Povrsina stanovanja",main="Cena in povrsina stanovanj")

par(pch=17,lty=5,col="blue")

par(las = 0)

plot(podatki6$Cena,podatki6$Povrsina,type="b",xlab="Cena stanovanja",ylab="Povrsina stanovanja",main="Cena in povrsina stanovanj",pch=17,lty=5,col="blue")

plot(podatki6$Cena)

####################################################################

#Histogram

hist(podatki6$Cena)

hist(podatki6$Cena,xlab="Cena",ylab="Frekvenca",main="Histogram spremenljivke Cena")

hist(podatki6$Cena,xlab="Cena",ylab="Frekvenca",main="Histogram spremenljivke Cena",col="lightgrey")

hist(podatki6$Cena,xlab="Cena",ylab="Frekvenca",main="Histogram spremenljivke Cena",density=10)

####################################################################

#Okvir z roèaji

boxplot(podatki6$Cena)

boxplot(podatki6$Cena,xlab="Cena",main="Cene stanovanj")

boxplot(podatki6$Cena,xlab="Cena",main="Cene stanovanj")
boxplot.stats(podatki6$Cena)$stats
text(x=1.3,y=boxplot.stats(podatki6$Cena)$stats,labels=boxplot.stats(podatki6$Cena)$stats)

####################################################################

#Izris dveh grafikonov na eno sliko:

par(mfcol=c(1,2))

hist(podatki6$Cena,xlab="Cena",ylab="Frekvenca",main="Histogram spremenljivke Cena",density=10)

boxplot(podatki6$Cena,xlab="Cena",main="Cene stanovanj")
text(x=1.3,y=boxplot.stats(podatki6$Cena)$stats,labels=boxplot.stats(podatki6$Cena)$stats)