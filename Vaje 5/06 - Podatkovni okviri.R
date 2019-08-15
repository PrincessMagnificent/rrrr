?data.frame

#Vnesemo vrednosti za 4 spremenljivke in jih shranimo v objekte ID, starost, spol in status:
ID<-1:4
starost<-c(25,34,28,52)
spol<-c('m','ž','m','ž')
status<-c(TRUE,TRUE,FALSE,TRUE)

#Definirane spremenljivke ID, starost, spol in status shranimo v podatkovni okvir, ki ga poimenujemo podatki:
podatki<-data.frame(ID,starost,spol,status)

#Priklic vrednosti:
podatki$ID		#priklic vrednosti spremenljivke ID
podatki$status	#priklic vrednosti spremenljivke status
podatki[c("ID","status")]	#priklic vrednosti spremenljivk ID in status
podatki[,2]	#priklic vrednosti spremenljivke, ki se nahaja v 2. stolpcu podatkovnega okvira
podatki[,c(2,3)] #priklic vrednosti spremenljivk, ki se nahajata v 2. in 3. stolpci podatkovnega okvira

#Sprememba vrstnega reda stolpcev s pomoèjo številke stolpca, podatke s preurejenim vrstnim redom stolpcev shranimo v objekt podatki1:
podatki1<-podatki[c(1,3,4,2)]; podatki1

#Sprememba vrstnega reda stolpcev s pomoèjo imen spremenljivk, podatke s preurejenim vrstnim redom stolpcev shranimo v objekt podatki2:
podatki2<-podatki[c("ID","spol","status","starost")]; podatki2

#Sprememba vrstnega reda stolpcev s pomoèjo imen spremenljivk:
#Imena spremenljivk v vrstnem redu, ki ga želimo, najprej shranimo v objekt spremenljivke:
spremenljivke<-c("ID","spol","status","starost"); spremenljivke

#Nato s pomoèjo objekta spremenljivke v objekt podatki3 shranimo podatke s preurejenim vrstnim redom spremenljivk:
podatki3<-podatki[spremenljivke]; podatki3

#Odstranjevanje doloèene spremenljivke (v tem primeru odstranimo spremenljivko, ki se nahaja v 1. stolpcu podatkovnega okvira podatki3, podatke nato shranimo v objekt podatki4):
podatki4<-podatki3[,-1]; podatki4

#Še en naèin:

#Iz podatkov odstranimo spremenljivki ID in status:
#Najprej imena spremenljivk, ki jih želimo izloèiti, shranimo v objekt spr na naslednji naèin:
spr<-names(podatki3) %in% c("ID","status")

#Nato uporabimo znak ! in v objekt podatki5 shranimo podatke brez spremenljivk, doloèenih v objektu spr:
podatki5<-podatki3[!spr]; podatki5

#Še en naèin:

#Spremenljivki odstranimo s pomoèjo zaporedne številske stolpcev, v katerem se spremenljivki nahajata:
podatki6<-podatki3[,c(-1,-3)]; podatki6

podatki3

podatki7<-podatki3[-3,]; podatki7

#Obdržimo samo tiste vrstice v podatkih, ki imajo na spremenljivki status vrednost TRUE (v primeru, da opazujemo enote, ki imajo status=TRUE):
podatki8<-podatki3[which(podatki3$status=="TRUE"),]; podatki8

podatki

#Združevanje podatkovnih okvirov:

ID<-1:4
zaupanje<-c(4,3,4,5)
izobrazba<-c(4,5,5,6)

podatkiB<-data.frame(ID,zaupanje,izobrazba); podatkiB

#Uporabimo funkcijo merge():
podatkiC<-merge(podatki,podatkiB,by="ID"); podatkiC

#Dodajanje (združevanje) stolpcev dveh razliènih podatkovnih okvirov s pomoèjo funkcije cbind():
podatkiD<-cbind(podatki,podatkiB); podatkiD

ID<-5:7
starost<-c(33,45,42)
spol<-c("m","m","ž")
status<-rep(TRUE,times=3)
ID<-5:7
zaupanje<-c(2,1,2)
izobrazba<-c(7,6,7)

podatkiE<-data.frame(ID,starost,spol,status,ID,zaupanje,izobrazba); podatkiE

podatkiD

names(podatkiD)<-c("ID","starost","spol","status","ID.1","zaupanje","izobrazba"); podatkiD

#Dodajanje vrstic s pomoèjo funkcije rbind():
podatkiF<-rbind(podatkiD,podatkiE); podatkiF

#Osnovne karakteristike podatkovnih okvirov:

length(podatkiF)		#Dolžina podatkovnega okvira podatkiF (število enot, N)
dim(podatkiF)		#Dimenzija podatkovnega okvira (število vrstic (opazovanj) in število stolpcev (spremenljivk))
str(podatkiF)		#Struktura objekta
class(podatkiF)		#tip objekta
mode(podatkiF)		#na kakšen naèin je objekt shranjen
names(podatkiF)		#imena komponent objekta (imena spremenljivk podatkovnega okvira)
head(podatkiF)		#izpiše prvih 6 vrstic podatkovnega okvira
tail(podatkiF)		#izpiše zadnjih 6 vrstic podatkovnega okvira
ls()				#seznam vseh objektov v delovnem prostoru
rm("s1")			#odstranimo objekt s1 iz delovnega prostora
ls()
rm(list=ls())		#odstranimo vse objekte v delovnem prostoru