library(XML)
library(methods)

mcamtcars <- mtcars[1:5,1:3]
mcamtcars

CARS <- newXMLNode("CARS")

for (i in 1:nrow(mcamtcars)){
  CAR <- newXMLNode("CAR",parent = CARS)
  cardata <- mcamtcars[i,]
  mpg <- newXMLNode("mgp",cardata$mpg,parent = CAR)
  cyl <- newXMLNode("cyl",cardata$cyl,parent = CAR)
  disp <- newXMLNode("disp",cardata$disp,parent = CAR)
}
saveXML(CARS,file = "my_cars_mca.xml")

