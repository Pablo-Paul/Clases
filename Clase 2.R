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

# Para actualizar en el github, tengo que seguir estos pasos: 
# git add nombre_del_archivo.R
# git commit -m "Descripción de los cambios realizados"
# git push
# Con esto debería actualizarse el GitHub

# Cargo un archivo:

base_inm <- read_csv(file="/Users/pabloalbornoz/Downloads/inmuebles-estado-nacional.csv",
                     col_names = TRUE)

class(base_inm)

# Los proyectos de trabajo nos permiten evitar poner toda la ruta. En este proyecto, que se llama Test1,
# la tenemos creada dentro de mi carpeta de Instrumentos de Análisis Urbano II 
# Entonces ahora que pasamos el archivo a la carpeta del proyecto, directamente podemos importar el archivo sin la ruta
# Con la tecla tab podemos ver los archivos que tenemos en el proyecto, cuando la apretamos dentro de las comillas
# Esto viene bien para compartir y colaborar con el proyecto. Se usa para la reproducibilidad de los códigos. 
# El ancla está en el archivo del Rproj, por lo que en tanto los archivos se muevan acompañandolo, le da lo mismo y lo lee en cualquier otra ubicación.

base_inm <- read_csv("inmuebles-estado-nacional.csv",
                     col_names = TRUE)

# Con command+enter podemos correr el programa. 

# Para el R Markdown, el ancla no es el proyecto, sino que es el archivo .Rmd. 
# Si el archivo está en una carpeta por encima de donde está el archivo Rmd, se usa "../"

