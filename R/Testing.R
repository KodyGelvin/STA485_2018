
data <- expand.grid( t=1:10, Subject_ID = 1:10 ) %>% mutate( y = response( t, stepwise_params ))
gam_analysis(data, N=10000)
