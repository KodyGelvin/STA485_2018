#' Generate data with varying response functions
#' @param input.t, vector of t values with which to create data
#' @param params, list of parameters which are specified for each different model
#' @return Returns a vector of response values for the input.t values.
#' @examples 
#' 
#' stepwise_params = list(
#'    method = 'step',
#'    max.height = 2,
#'    baseline = 5,
#'    duration = 7)
#'  t <- seq(-2, 10, by=.001)
#'  y <- response( t, stepwise_params )
#'  plot(t, y)
#'  @export
response <- function(input.t, params = list()){
  if(params$method == 'step'){
    y <- ifelse(0 < input.t & input.t < params$duration, params$max.height, params$baseline)     
  }else{
    error("params$method should be either 'step' or ...")
  }
  return(y) 
}


