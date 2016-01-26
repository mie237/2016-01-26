library(rio)
library(dplyr)
library(ggplot2)

sugar <- import("Ex11.05.txt")

sugar %>% 
  ggplot(aes(x=Temperature, y=`Coverted-sugar`)) -> p

p + geom_point()
p + geom_point() + stat_smooth(method="lm")
