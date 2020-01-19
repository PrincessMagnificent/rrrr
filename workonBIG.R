#: size_bytes in price, ter dve
#številski spremenljivki, in sicer: cont_rating in prime_genre;

# "size_bytes","price","cont_rating","prime_genre"

dataset <- read_csv("GitHub/rrrrr/AppleStoreData-sample.csv")

interest<-c("size_bytes","price","cont_rating","prime_genre")
mydata<-dataset[interest]
names(mydata)[1]<-"Velikost"
names(mydata)[2]<-"Cena"
names(mydata)[3]<-"Primernost"
names(mydata)[4]<-"Tip"

#Analiza številskih spremenljivk
#a) Izraèunajte glavne opisne statistike (srednje vrednosti in mere variabilnosti) za obe številski spremenljivki in jih prikažite. Rezultate tudi vsebinsko interpretirajte.
#b) Številski spremenljivki predstavite tudi grafièno s pomoèjo histograma in okvirja z roèaji. Na grafiènih prikazov opišite znaèilnosti posamezne spremenljivke.
#c) S pomoèjo številskih spremenljivk narišite razsevni grafikon. Ustrezno preimenujte naslova osi, grafikonu dodajte tudi glavni naslov. Ali razsevni grafikon nakazuje na povezanost obravnavanih spremenljivk? Svoj odgovor pojasnite!
 # d) Med obravnavanima spremenljivkama preverite njuno povezanost s pomoèjo Pearsonovega korelacijskega koeficienta. Na osnovi njegove vrednosti  opredelite smer in jakost povezanosti med obravnavanima spremenljivkama!
  #e) Glede na vsebino spremenljivk doloèite odvisno in neodvisno spremenljivko. Izraèunajte ustrezno regresijsko premico, jo zapišite ter vsebinsko interpretirajte. Regresijsko premico vrišite tudi v razsevni grafikon iz toèke c) te naloge.
#f) Izraèunajte determinacijski koeficient in standardno napako za izraèunano regresijsko premico! Na osnovi njunih vrednosti opredelite kakovost dobljenega regresijskega modela!

mydata$Velikost<-mydata$Velikost/1024 #for kB
mydata$Velikost<-mydata$Velikost/1024 #run again for MB

library(psych)
describe(mydata$Velikost)
describe(mydata$Cena)

###BIG WARNING, YOU HAVE TO DO A BOX PLOT AND A HIST IN ONE AND THEN THE OTHER