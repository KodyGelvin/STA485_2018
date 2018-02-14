#' Calculate Area under the curve by connecting the dots
#' 
#' @param t Vector of x-axis points
#' @param y Vector of y-values.
#' @examples 
#' data <- data.frame(t=1:10, y=abs(rnorm(10)))
#' data <- data.frame(t=0:10, y=1)
#' pointwise.integrate(data$t, data$y)
#' @export
pointwise.integrate <- function(t, y){
  
  f <- function(t.grid, t.obs, y.obs){
    out <- approx( t.obs, y.obs, xout=t.grid ) 
    return(out$y)
  }
  
  out <- integrate(f, min(t), max(t), t, y )    
  return(out)
}
