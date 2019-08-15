#Èe smo R že zaprli, ponovno

#Doloèimo delovni direktorij:

setwd("D:/STAT1 RST 18-19/Vaje/Vaje 6")

#Naložimo podatke v delovni prostor

load("podatki6.Rda")

####################################################################

#STRUKTURNI KROG

#Izpis tabele za spremenljivko Cent.ogr (absolutne frekvence)

table(podatki6$Cent.ogr)

pie(table(podatki6$Cent.ogr))

prop.table(table(podatki6$Cent.ogr))

pie(prop.table(table(podatki6$Cent.ogr)))

pie(prop.table(table(podatki6$Cent.ogr)),col=c("red","blue"))

D<-prop.table(table(podatki6$Cent.ogr))
pielabels<-paste(D*100,"%",sep=""); pielabels

pie(D,col=c("red","blue"),labels=pielabels,main="Centralno ogrevanje v stanovanjih")
legend("topright",names(D),fill=c("red","blue"))

pielabels1<-paste(names(D),";",D*100,"%",sep=""); pielabels1
pie(D,col=c("red","blue"),labels=pielabels1,main="Centralno ogrevanje v stanovanjih")


####################################################################

#STRUKTURNI STOLPCI

barplot(table(podatki6$Cent.ogr))

BP<-barplot(D,main="Strukturni stolpci",ylab="Delež")

barlabels<-paste(D*100,"%",sep=""); barlabels

BP<-barplot(D*100,main="Strukturni stolpci",ylab="Delež",xpd=TRUE)
text(x=BP,y=D*100+2,labels=barlabels,xpd=NA)

BP<-barplot(D*100,main="Strukturni stolpci",ylab="Delež",ylim=c(0,100),col="green")
text(x=BP,y=D*100+2,labels=barlabels)

BP<-barplot(D*100,main="Strukturni stolpci",ylab="Delež",ylim=c(0,100),col="green",axisnames=FALSE,xpd=TRUE)
text(x=BP,y=D*100+2,labels=barlabels)
text(x=BP,par("usr")[3]-5,labels=names(D),xpd=NA,srt=45)