?matrix

matrix(seq(1,6),nrow=2)

matrix(c(1,4,2,5,3,6),nrow=2)

#Matriko shranimo v objekt matrika1:
matrika1<-matrix(seq(1,6),nrow=2,byrow=TRUE)

#Priklic vrednosti v matriki:
matrika1[1,]	#Priklic vrednosti v 1. vrstici matrike
matrika1[,2]	#Priklic vrednosti v 2. stolpcu matrike
matrika1[2,3]	#Priklic vrednosti, ki se nahaja v celici 2. vrstice in 3. stolpca 

#V objekt matrika 2 shranimo matriko, ki smo ji dodali tudi imena stolpcev in vrstic:
matrika2<-matrix(seq(1,6),nrow=2,byrow=TRUE,dimnames=list(c("v1","v2"),c("S1","S2","S3"))); matrika2
