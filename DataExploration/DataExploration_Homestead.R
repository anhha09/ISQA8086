library(tidyverse)
library(ggplot2)
##Cleaned dataset from 2016 to 2017
dataset <- read_csv("CleanedWaterQuality16_17.csv")

##Higher temperature should lead to lower dissolved oxygen
ggplot(dataset)+ geom_point(aes(x = TempF, y = DissolvedOxygen), color = "blue")

##Added facets
ggplot(dataset)+ geom_point(aes(x = TempF, y = DissolvedOxygen), color = "blue")+ 
facet_wrap(~ WaterQualitySite, nrow = 2)

##Added a trend line
ggplot(dataset)+ geom_point(aes(x = TempF, y = DissolvedOxygen),color = "blue")+ 
geom_smooth(aes(x = TempF, y = DissolvedOxygen), color = "black")

##Temperature vs. conductivity . Higher temperature should lead to higher conductivity
ggplot(dataset)+ geom_point(aes(x = TempF, y = Conductivity), color = "blue")

##The numbers of observations from all sites during 2016 and 2017
ggplot(dataset) + geom_bar(mapping=aes(x=Month, fill = WaterQualitySite),color="red")+ 
scale_x_continuous(limits=c(0,15))+ scale_y_continuous( limits=c(0, 30))
