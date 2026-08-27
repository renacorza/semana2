# Renato Cortez Zapata
# 27 de Agosto de 2026
# Calcula que porcentaje del salario mensual se destina a consumo y se analizan los resultados


#1

salario <- c(230000, 312000, 275000, 540000, 461000) 
consumo <- c(80000, 100000, 86500, 240000, 185000) 
anios <- seq(2016,2020) 

class(salario) 
class(consumo)
class(anios)

length(salario)
length(consumo)
length(anios)

#2

salario[2] 
consumo[c(1, 3, 5)] 
anios [-4] 

#3

sum(consumo < 150000) 
mean(consumo < 150000) 

#4

tasa_consumo <- (consumo / salario) * 100 
tasa_consumo

#5

mean(tasa_consumo) # En promedio, el 36.57% del salario se usa en consumo
median(tasa_consumo) # La mediana de la tasa de consumo es de 34.78%
sd(tasa_consumo) # La desviación estándar de la tasa de consumo es de 5.58
quantile(tasa_consumo) # Los cuartiles de la tasa de consumo indican un sesgo hacia la derecha

#6

## En el punto 1 se crean los vectores para salario, consumo y años, y se verifica el tipo y extención de cada uno
## En el punto 2 se busca el segundo dato del vector salario, el primero, tercero y quinto del vector consumo y todos los año excepto el cuarto
## En el punto 3 se calcula la cantidad y la proporción de valores de consumo menores a 150000 
## En el punto 4 se calcula proporción del salario que se usa para consumo (tasa de consumo)
## En el punto 5 se calcula la media, mediana, desviación estándar y cuantiles para la variable tasa de consumo


















