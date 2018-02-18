#' Calculate Area under the curve when the curve is defined by connect-the-dots
#' 
#' @param data a data.frame with columns t and y
#' @examples 
#' data <- data.frame( t = 1:10, y = rnorm(10))
#' pointwise.integrate(data)
#' @export
pointwise.integrate <- function(data){
  
  f <- function(t, data){
    out <- approx( data$t, data$y, xout=t ) 
    return(out$y)
  }
  
  integrate(f, min(data$t), max(data$t), data )    
  
  
  pointwise.integrate <- function(t, y){
  
}