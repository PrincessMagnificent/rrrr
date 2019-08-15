#Generiramo vektor x:
x<-c(1,2,3,4,5) #x-u prirednimo vrednosti 1,2,3,4,5
x #priklièemo vrednosti vektorja x

#uporabimo lahko tudi naslednji ukaz:
c(1,2,3,4,5)->x

#vrednosti vektorja x pomnožimo z 2:
x*2

#dvakratnike vrednosti vektorja x shranimo v objekt y:
y<-x*2
y

#Izraèunamo enaèbo s pomoèjo vrednosti vektorjev x in y:
2*x+y+1
v<-2*x+y+1 #Rezultate enaèbe shranimo v objekt v

v

min(v)  #najmanjša vrednost vektorja (objekta) v
max(v)  #najveèja vrednost vektorja (objekta) v
range(v) #razpon vrednosti vektorja (objekta) v: izpiše najmanjšo in najveèjo vrednost vektorja v
length(v) #dolžina vektorja v (število vrednosti; število enot)
sum(v)  #vsota vrednosti vektorja v
sum(v)/length(v) #vsoto vektorja v delimo s številom vrednosti (dobimo vrednost aritmetiène sredine)

#Za izraèun aritmetiène sredine pa lahko uporabimo tudi funkcijo mean()
mean(v)

sum((v-mean(v))**2) #vsota kvadratov odklonov od povpreèja vektorja v
sum((v-mean(v))^2) #vsota kvadratov odklonov od povpreèja vektorja v
sum((v-mean(v))^2)/length(v) #vsoto kvadratov odklonov od povpreèja vektorja v delimo s številom vrednosti (dobimo vrednost variance)
var.v<-sum((v-mean(v))^2)/length(v) #vrednost variance shranimo v objekt var.v

#Varianca za vzorène podatke:
var(v)
sum((v-mean(v))^2)/(length(v)-1)


sqrt(var.v) #kvadratni koren iz variance (dobimo standardni odklon)
sqrt(sum((v-mean(v))^2)/length(v))

sd.v<-(sqrt(var.v)) #vrednost standardnega odklona shranimo v objekt sd.v

#Standardni odklon za vzorène podatke:
sd(v)


