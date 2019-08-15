seznam1<-list(c(1,3,5),c(TRUE,TRUE,FALSE,TRUE),
              c('ena','dve','tri')); seznam1

seznam1[[1]]
seznam1[[2]]
seznam1[[3]]

seznam1[c(1,2)]

seznam1[[c(1,2)]]

seznam1[[c(3,1)]]

seznam1[c(3,1)]

seznam2=list('A'=c(1,3,5),'B'=c(TRUE,TRUE,FALSE,TRUE),'C'= c('ena','dve','tri')); seznam2

seznam2$A
seznam2$A[2]

names(seznam1)<-c("A","B","C"); seznam1

seznam3<-c(seznam1,seznam2); seznam3

seznam3$A