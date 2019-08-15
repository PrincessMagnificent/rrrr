?seq

#Zaporedje števil od 2 do 10
seq(2,10)
seq(to=10,from=2)

#Zaporedje števil od 2 do 10 s korakom 0,5:
seq(2,10,by=0.5)

s1<-seq(2,10,by=0.5)

s2<-seq(1,by=2,length=15)
s2

s3<-rep(2.5,times=11); s3
s4<-rep(7.5,times=9); s4
s5<-rep(12.5,times=15); s5

X<-c(s3,s4,s5); X
X<-c(rep(2.5,times=11),rep(7.5,times=9),rep(12.5,times=15)); X

s6<-c(2.5,7.5,12.5)
s7<-rep(s6, each=5); s7

z1<-c("X1","Y2","X3","Y4","X5","Y6"); z1

?paste

z2<-paste(c("X","Y"), 1:6, sep=""); z2
z3<-paste(c("X","Y"), 1:6, sep="-"); z3