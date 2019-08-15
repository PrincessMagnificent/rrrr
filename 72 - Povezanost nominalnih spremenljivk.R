#Èe smo R že zaprli, ponovno
#Doloèimo delovni direktorij:

setwd("D:/STAT1 RST 18-19/Vaje/Vaje 7")

#Naložimo podatke v delovni prostor

load("vaje7.Rda")

####################################################################

#Izraèunamo vrednost hi-kvadrat testa:

HI<-chisq.test(table(podatki$Genre,podatki$Rating))
HI

HI$observed		#Izpis tabele empiriènih (dejanskih) frekvenc
HI$expected		#Izpis tabele teoretiènih (prièakovanih) frekvenc


####################################################################

#Uporabimo lahko tudi funkcijo assocstats(), ki se nahaja v knjižnici vcd,
#ki poleg vrednosti hi-kvadrat testa izraèuna tudi vrednosti kontigenènih koeficientov

library(vcd)
assocstats(table(podatki$Genre,podatki$Rating))
