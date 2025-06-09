#Usando o pacote dplyr para as manipulações dos dados
library(dplyr) 

#Usando o pacote readxl para importar a Base_tuberculose.xls
library(readxl)
Base_tuberculose <- read_excel("Base_tuberculose.xls")
View(Base_tuberculose)

#Usando o pacote readxl para importar a Base_tuberculose.xls
library(readxl)
Base_indicadores <- read_excel("Base_indicadores.xls")
View(Base_indicadores)

#Junta com base na coluna "municipio" 
base_completa <- left_join(Base_indicadores, Base_tuberculose, by = "Municipio")

#Salva em novo arquivo
write.csv(base_completa, "base_unificada.csv", row.names = FALSE)

