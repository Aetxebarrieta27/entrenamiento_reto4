library(readr)
library(dplyr)
library(naniar)
library(nortest)
library(VIM)
datos<- read.csv("C:/Users/aiala/Downloads/netflix (1).csv")

miss_var_summary(datos)
vis_miss(datos)#MAR

#imputar seasons
moda<- names(sort(table(datos$Seasons), decreasing = TRUE))[1]
datos$Seasons[is.na(datos$Seasons)]<- moda

#imputar minutes
mediana <- median(datos$Minutes, na.rm = TRUE)
datos$Minutes[is.na(datos$Minutes)] <- mediana


vis_miss(datos)
