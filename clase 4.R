df <- read.csv('https://raw.githubusercontent.com/asalber/manual-r/master/datos/colesterol.csv')
df
print(summary(df))
df<-data.frame(asignatura= c("Matemáticas","Física","Economía"), nota=c(8.5,7,4.5))
df
str(df)
nombre <- c("Carlos", "María", "Carmen", "Pedro", "Luis", "Sara")
sexo <- c("H", "M", "M", "H", "H", "M")
fisica <- c(6.7, 7.2, 5.5, 4.5, 3.5, 6.2)
quimica <- c(8.1, 9.5, 5.0, NA, 5.0, 4.0)
sexo <- factor(sexo)
levels(sexo)
media<-(fisica+quimica)/2
media
aprobado<- media>=5
aprobado
nombre[aprobado & !is.na(aprobado)]
df<- data.frame(nombre,sexo,fisica,quimica)
df$media<-media
df
df[sexo=="M"&media>=5,c("nombre","media")]
