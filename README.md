# Paleta

Este paquete contiene una colección de paletas de colores inspiradas en el en las visualizaciones históricas de W.E.B. Du Bois, tal como fueron presentadas en:

> Battle-Baptiste, W. and Britt Rusert (eds.) (2018)
> *W.E.B. Du Bois's Data Portraits: Visualizing Black America*.
> Princeton Architectural Press.

Las paletas están adaptadas para su uso en visualizaciones en R, especialmente con `ggplot2`.

## 📦 Instalación

Puedes instalar el paquete directamente desde GitHub con:

```r
# Si no tienes devtools:
install.packages("devtools")

# Instalar Paleta desde GitHub
devtools::install_github("una-marietha/paleta.dubois")

library(paleta.dubois)

```



## 🎨 Uso

Una vez cargado el paquete, puedes acceder a tres paletas y sus funciones asociadas:

Paletas disponibles:

- paleta_c: paleta discreta (colores variados)

- paleta_cam: paleta continua en amarillos

- paleta_cgris: paleta continua en grises

### Acceder a paletas como vectores

# Paleta discreta
`obtener_paleta_completa()`


# Paleta continua (amarillos)
`obtener_paleta_conam()`

# Paleta continua (grises)
`obtener_paleta_congr()`

Escalas para ggplot2 (ejemplos)

```r 
library(ggplot2)

ggplot(mpg, aes(displ, hwy, color = class)) +
  geom_point(size = 3) +
  scale_dubois_discreta() +
  theme_minimal()

  ggplot(mpg, aes(displ, hwy, color = cty)) +
  geom_point(size = 3) +
  scale_continuous_am() +
  theme_minimal()

ggplot(mpg, aes(displ, hwy, color = cyl)) +
  geom_point(size = 3) +
  scale_continuous_gr() +
  theme_minimal()
  
```


🙋 Autora
Desarrollado por `@una-marietha`, como parte de un ejercicio de exploración visual en torno a la estética de los gráficos sociológicos de W.E.B. Du Bois.






