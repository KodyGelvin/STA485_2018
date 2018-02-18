#' Calculate Area under the curve when the curve is defined by thousands of gam-predicted points
#' 
#' @param data a data frame with columns t & y
#' @param N how many points for the gam function to predict
#' @examples 
#' data <- data.frame( t = 1:10, y = rnorm(10))
#' gam_analysis(data, N=10000)
#' @export
#' library(mgcv)
gam_analysis <- function(data, formula = y~s(t), N=10000){
  Model <- gam(formula, data=data)
  t.grid = data.frame(t=seq(0,max(data$t),length=N) )
  y.grid = predict(Model, newdata=t.grid)
  AUC = pointwise.integrate(t.grid$t, y.grid)
  return(AUC)
}


