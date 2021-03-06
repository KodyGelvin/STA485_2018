% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ResponseFunction.R
\name{response}
\alias{response}
\title{Generate data with varying response functions}
\usage{
response(input.t, params = list())
}
\arguments{
\item{input.t, }{vector of t values with which to create data}

\item{params, }{list of parameters which are specified for each different model}
}
\value{
Returns a vector of response values for the input.t values.
}
\description{
Generate data with varying response functions
}
\examples{

stepwise_params = list(
   method = 'step',
   max.height = 2,
   baseline = 5,
   duration = 7)
 t <- seq(-2, 10, by=.001)
 y <- response( t, stepwise_params )
 plot(t, y)
 @export
}
