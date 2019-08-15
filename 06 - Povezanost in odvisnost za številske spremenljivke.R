#Èe smo R že zaprli, ponovno

#Doloèimo delovni direktorij:

setwd("D:/STAT1 RST 18-19/Vaje/Vaje 6")

#Naložimo podatke v delovni prostor

load("podatki6.Rda")

####################################################################

#Povezanost preverimo s pomoèjo razsevnega grafikona:

plot(podatki6$Povrsina,podatki6$Cena,xlab="Površina",ylab="Cena",main="Razsevni grafikon")


####################################################################

#Izraèun Pearsonovega korelacijskega koeficienta:

cor(podatki6$Povrsina,podatki6$Cena)


####################################################################

#Izraèun regresijske premice (odvisna spremenljivka: Cena, neodvisna spremenljivka: Površina)

lm(podatki6$Cena~podatki6$Povrsina)

#Kakovost regresijskega modela (preverimo vrednost determinacijskega koeficienta)
#V izpisu je to vrednost Multiple R Squared v predzadnji vrstici

summary(lm(podatki6$Cena~podatki6$Povrsina))


####################################################################

#Regresijsko premico dodamo na razsevni grafikon:

plot(podatki6$Povrsina,podatki6$Cena,xlab="Površina",ylab="Cena",main="Razsevni grafikon")
abline(lm(podatki6$Cena~podatki6$Povrsina))