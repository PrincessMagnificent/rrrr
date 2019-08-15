#Doloèimo delovni direktorij:

setwd("D:/STAT1 RST 18-19/Vaje/Vaje 6")


####################################################################

#Vnos podatkov preko tipkovnice

mojipodatki<-data.frame(starost=numeric(0),spol=character(0),teza=numeric(0))

edit(mojipodatki)

mojipodatki<-edit(mojipodatki)

####################################################################

#Uvažanje tekstovne datoteke

podatki1<-read.table("Datoteke s podatki/POD1.txt",header=TRUE)
View(podatki1)
podatki1
podatki1$Area	#Priklic ene izmed spremenljivk
podatki1[,c("Price","Area")]	#Priklic veè spremenljivk naenkrat

####################################################################

#Uvažanje Excelove datoteke

library(xlsx)

podatki2<-read.xlsx("Datoteke s podatki/POD1.xlsx",1)
View(podatki2)

####################################################################

#Uvažanje .csv datoteke

podatki3<-read.table("Datoteke s podatki/POD1.csv",header=TRUE,dec=",",sep=";")
View(podatki3)

podatki4<-read.csv("Datoteke s podatki/POD1.csv",header=TRUE,dec=",",sep=";")
View(podatki4)

####################################################################

#Uvažanje .sav datoteke (podatki programa SPSS)

library(foreign)

podatki5<-read.spss("Datoteke s podatki/POD1.sav",use.value.labels=TRUE,to.data.frame=TRUE)
View(podatki5)

#Podatkom opredelimo obliko podatkovnega okvira

podatki5<-as.data.frame(podatki5)

#Shranimo podatke

save(podatki5,file="podatki5.Rda")