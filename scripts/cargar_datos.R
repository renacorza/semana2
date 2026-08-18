#Actividad en clases
#18 de agosto



install.packages("tidyverse") #instalar paquete tidyverse

#cargar la base de datos

library(readr) #carga el paquete para importar archivos CSV
casen2 <- read_csv("data/raw/casen_sucio.csv") #carga la base de datos de CASEN
