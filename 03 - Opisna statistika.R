#Èe smo R že zaprli, ponovno

#Doloèimo delovni direktorij:

setwd("D:/STAT1 RST 18-19/Vaje/Vaje 6")

#Naložimo podatke v delovni prostor

load("podatki6.Rda")

####################################################################

#Osnovna statistika (povzetek opisnih statistik):

summary(podatki6)		#Vse spremenljivke naenkrat

summary(podatki6$Povrsina)	#Samo za spremenljivko Površina

summary(podatki6$Cent.ogr)


#Uporabimo lahko tudi funkcijo describe() v knjižnici psych:

library(psych)

describe(podatki6$Povrsina)	#Opisna statistika spremenljivke Površina

describe(podatki6[,c("Povrsina","Cena")])		#Opisna statistika veè spremenljivk hkrati


####################################################################

#Izraèun kvantilov:

quantile(podatki6$Cena,p=c(0.25,0.5,0.75))	#1., 2. in 3. kvartil

quantile(podatki6$Povrsina,p=c(0.25,0.5,0.75))	#1., 2. in 3. kvartil

quantile(podatki6$Povrsina,p=seq(0.1,0.9,by=0.1))	#Decili

quantile(podatki6$Povrsina,p=0.5)	#Mediana (2. kvartil)

median(podatki6$Povrsina)	#Mediana


####################################################################

#Aritmetièna sredina

#Uporabimo funkcijo mean()

mean(podatki6$Povrsina,na.rm=TRUE)

#Izraèunamo po formuli

Mean<-sum(podatki6$Povrsina)/length(podatki6$Povrsina); Mean


####################################################################

#Varianca

#Uporabimo funkcijo var(), ki pa je primerna za izraèun variance na vzorcu

var(podatki6$Povrsina,na.rm=TRUE)

#Izraèunamo po formuli (formula za izraèun variance za populacijo)

Var<-sum((podatki6$Povrsina-Mean)^2)/length(podatki6$Povrsina); Var


####################################################################

#Standardni odklon

#Uporabimo funkcijo sd(), ki pa je primerna za izraèun standardnega odklona na vzorcu

sd(podatki6$Povrsina,na.rm=TRUE)

#Izraèunamo po formuli (upoštevamo varianco, izraèunano po formuli za populacijo)

Sd<-sqrt(Var); Sd