# Para instalar paquetes, necesitamos el siguiente comando install.packages("nombre_del_paquete"), una sola vez
# Después para usarla, función library(paquete)

install.packages('geoAr')

# Lo puse en la "Consola"

# Usaremos Tidyverse. Con el install.packages("tidiverse") ya tenemos todos los paquetes como ggplot 2
# En cada inicio de sesión necesitamos activar la librería library(tidyverse)

library(tidyverse)

# El RScript es como un archivo de texto plano.
# El pipe %>% es propio de Tidyverse

curso <- data.frame(nombre     = c("Juan", "Pedro", "María", "José","Enzo", "Ariel", "Eva"),
                    edad       = c(25, 32, 21,40, 30, 28, 37),
                    nacimiento = c(1993, 1986, 1997, 1978, 1988, 1990, 1981),
                    programa   = c("spss", "stata", "stata", "excel", "R", "stata", "spss"),
                    nivel      = c(3, 5,7, 6, 2, 6, 8))

#Dónde está el ancla de mi carpeta: Uso la función getwd()

getwd()

#En este caso estamos en:
# "/Users/pabloalbornoz/Documents/Maestría EconomÍa Urbana (MEU)/Instrumentos de Análisis Urbano II/Test1"

# Pasar esto round(prop.table(table(curso$programa)) * 100, digits = 1) en la lógica del PIPE

round(prop.table(table(curso$programa)) * 100, digits = 1)

curso$programa %>% 
  table() %>% 
  prop.table() %>% 
  round(digits=4)*100

# table() cuenta la cantidad de veces que aparece una variable en una columna
# prop.table() nos da la proporción, entonces lo multiplicamos por 100 para el porcentaje

# La función class nos tira qué tipo es cada variable
# numérico
class(2)
# character
class("2")
# vector/numerica
class(c(2,6,10))
# tabla
tabla_r_base <- round(prop.table(table(curso$programa)) * 100, digits = 1)
class(tabla_r_base)

# Paquetes para importar archivos: {readr} (para archivos más sencillos, como CSV), y {haven} (para archivos como SPSS)