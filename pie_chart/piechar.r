v<-c(30,20,11,19,17,3)
l<-c("india","china","Russia","jappan","quba","koria")
pie(values,labels,col=rainbow(6),main="population chart")

library(plotrix)

#install.packages("plotrix")
legend("topright",c("india","china","Russia","jappan","quba","koria"),fill = rainbow(length(l)))

pie3D(v,labels=l,explode = 0.1,main="chart")
 
# best fit line
# squired error methord
# 
