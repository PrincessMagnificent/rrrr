#Doloèimo delovni direktorij:

setwd("D:/STAT1 RST 18-19/Vaje/Vaje 7")

#Naložimo podatke v delovni prostor

load("vaje7.Rda")

####################################################################

#Opis spremenljivk s pomoèjo tabele:

table(podatki$Rating)
prop.table(table(podatki$Rating))

table(podatki$Genre)
prop.table(table(podatki$Genre))

#Uporabimo lahko tudi funkcijo freq() v knjižnici descr, ki izpiše tudi odstotke:

library(descr)

freq(podatki$Rating,plot=FALSE)
freq(podatki$Genre,plot=FALSE)


####################################################################

#Kontingeèna tabela za spremenljivki Žanr in Ocena:

table(podatki$Genre,podatki$Rating)
Tabela<-table(podatki$Genre,podatki$Rating); Tabela	#tabelo shranimo v objekt Tabela

#Tabela deležev, izraèunanih po stolpcih:

Tabela<-prop.table(Tabela,2); Tabela

addmargins(Tabela,1)	#Dodamo zbirno vrstico
addmargins(Tabela,1)*100	#Deleže v tabeli pomožimo s 100, da dobimo odstotke

Tabela
Tabela<-Tabela*100; Tabela


####################################################################

#Pripravimo grafièni prikaz stolpène strukture:

ST<-barplot(Tabela)
ST<-barplot(Tabela,ylab="Odstotek",main="Ocena vsebine glede na žanr",col=rainbow(2),cex.axis=0.9)
legend("bottom",horiz=TRUE,rownames(Tabela),fill=rainbow(2),xpd=TRUE,cex=0.8,inset=c(0,-0.25))

#Pripravimo oznake podatkov:

oznake<-paste(round(Tabela,2),"%",sep=""); oznake

cumsum(Tabela[,1])

#Oznake podatkov dodamo na grafikon:

text(x=ST[1],y=cumsum(Tabela[,1]),pos=1,labels=oznake[c(1,2)],cex=0.9)
text(x=ST[2],y=cumsum(Tabela[,2]),pos=1,labels=oznake[c(3,4)],cex=0.9)
text(x=ST[3],y=cumsum(Tabela[,3]),pos=1,labels=oznake[c(5,6)],cex=0.9)
text(x=ST[4],y=cumsum(Tabela[,4]),pos=1,labels=oznake[c(7,8)],cex=0.9)