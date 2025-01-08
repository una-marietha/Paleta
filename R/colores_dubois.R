# Paleta de colores extraída de Battle-Baptiste, W. and Britt Rusert (eds.) (2018) W.E.B. Du Bois's Data Portraits Visualizing Black America. The color line at the turn of the Twentieth Century. Princeton Architectural Press

# Definir la paleta de colores
paleta_c <- c("#df465f", "#505e57", "#e2b257", "#22205b", "#f1e3d0","#bc8c81","#748c75","#604232", "#a9a693","#2d2a23", "#efc57b", "#e7b4aa","#c9c5b2")

paleta_cam <- c("#b98631","#795c33","#c89634","#f4ba44","#ddb773", "#dbd1be")

paleta_cgris <- c("#2d2a23","#575448", "#8f7c5c", "#645e54")

#' Obtener la paleta de colores discreta
#'
#' Esta función devuelve la paleta de colores predefinidos.
#'
#' @return Un vector con los colores definidos.
#' @export
obtener_paleta_completa <- function() {
  return(paleta_c)
}

#' Obtener la paleta de colores continua en amarillos
#'
#' Esta función devuelve la paleta alternativa de colores predefinidos.
#'
#' @return Un vector con los colores definidos.
#' @export
obtener_paleta_conam <- function() {
  return(paleta_cam)
}

#' Obtener la paleta de colores continua en grises
#'
#' Esta función devuelve la paleta alternativa de colores predefinidos.
#'
#' @return Un vector con los colores definidos.
#' @export
obtener_paleta_congr <- function() {
  return(paleta_cgris)
}

#' Paleta de colores nueva para variables discretas
#'
#' Esta función devuelve un `scale_color_manual()` con los colores definidos en la paleta nueva.
#'
#' @return Un scale_color_manual para usar con ggplot2.
#' @export
scale_dubois_discreta <- function() {
  ggplot2::scale_color_manual(values = paleta_c)
}

#' Paleta de colores en amarillo para variables continuas
#'
#' Esta función devuelve un `scale_color_gradientn()` con los tonos en amarillo
#'
#' @return Un scale_color_gradientn para usar con ggplot2.
#' @export
scale_continuous_am <- function() {
  ggplot2::scale_color_gradientn(colors = paleta_cam)
}


#' Paleta de colores en gris para variables continuas
#'
#' Esta función devuelve un `scale_color_gradientn()` con los tonos en gris
#'
#' @return Un scale_color_gradientn para usar con ggplot2.
#' @export
scale_continuous_gr <- function() {
  ggplot2::scale_color_gradientn(colors = paleta_cgris)
}


