#' Generate data with varying response functions
#' @param input, t values with which to create data
#' @param params, list of parameters which are specified for each differet model
#' @examples 
#' 
#' 

stepwise_params = list(
    method = 'step',
    max.height = 2,
    baseline = 1,
    duration = 30)
data <- data.frame( t = -15:60, y = rnorm(76))

response <- function(input.t, params = list()){
  if(params$method == 'step'){
    if(data$t > 0){ 
      ifelse(data$t < 30, 2, 1)     
    }
    else{ 
    y = 1
    }
  }
}
#keeps saying condition has length > 1 and only the first element will be
# used. It worked before I added the outer layer of conditionals saying
#conditionals saying that t must be greater than 0 for the pre exercise
y <- response(data$t, stepwise_params)
newdata <- data.frame(data$t, y)
ggplot(data = newdata, aes(y = y, x = data.t)) +
  geom_line()