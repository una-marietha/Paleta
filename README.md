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

Una vez cargado el paquete, puedes acceder a tres paletas y sus funciones asociadas.


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

# Discretas
penguins %>%
  na.omit() %>% 
  ggplot(aes(x = sex, y = flipper_length_mm,
             color = island)) +
  geom_jitter(alpha = 0.5, width = 0.1, height = 0.2) +
  geom_boxplot(alpha = 0.3) +
  scale_dubois_discreta() +
  labs(title = "Distribución de las longitudes de aletas de pingüinos", subtitle = "Por sexo, por isla", color = "Isla", x = "Sexo", y = "Longitud en mm") +
  theme_minimal()

# Ejemplo continua

penguins %>% 
  na.omit() %>% 
  ggplot(aes(x = sex, y = flipper_length_mm, color = flipper_length_mm)) + 
  geom_jitter(alpha = 0.5, width = 0.1, height = 0.2) + 
  geom_boxplot(alpha = 0.3) + 
  scale_continuous_am() +  # Usar la paleta continua
  labs(title = "Distribución de las longitudes de aletas de pingüinos", 
       subtitle = "Por sexo, por longitud de aleta", color = "Longitud", 
       x = "Sexo", y = "Longitud en mm") + 
  theme_minimal()
  
```


🙋 Autora
Desarrollado por `@una-marietha`, como parte de un ejercicio de exploración visual en torno a la estética de los gráficos sociológicos de W.E.B. Du Bois.






