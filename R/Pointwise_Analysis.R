#' Do the analysis by the Connect-the-dots version of AUC.
#' 
#' @params data A data frame with columns t and y
#' @params by a quoted column column name to denote groups to average the AUC over.
#' @examples
#' data <- expand.grid( t=1:10, Subject_ID = 1:10 ) %>% mutate( y = rnorm(n()))
#' pointwise_analysis(data) 
#' @export 
pointwise_analysis <- function(data, by='Subject_ID'){
  out <- data %>%
    group_by_( by ) %>%
    do( data.frame( AUC = pointwise.integrate(.$t, .$y)$value ) ) %>%
    group_by() %>%
    summarize(AUC = mean(AUC))
  return(out)
}