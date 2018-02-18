#' Calculate Area under the curve when the curve is defined by connect-the-dots
#' 
#' @param data a data.frame with columns t and y
#' @examples 
#' data <- data.frame( t = 1:10, y = rnorm(10))
#' pointwise.integrate(data$t, data$y)
#' @export
pointwise.integrate <- function(t, y){
  
  f <- function(t.grid, t.obs, y.obs){
    out <- approx( t.obs, y.obs, xout=t.grid ) 
    return(out$y)
  }
  
  integrate(f, min(t), max(t), t, y )    
  
<<<<<<< HEAD
}
=======
  
  pointwise.integrate <- function(t, y){
  
}
>>>>>>> 43fcf070df6b204574f2019646a3c2067f05a8d0
