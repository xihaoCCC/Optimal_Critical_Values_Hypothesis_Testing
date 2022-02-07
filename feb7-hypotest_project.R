library(pwr)
library(tidyverse)

aspirin_p <- 0.6

n = 100

m = 70

alpha <- function(n,p,m){
  k <- m:n
  val <- sum(dbinom(k,n,p))
  return(val)
}

ex <- alpha(n, aspirin_p, m)

#Code below is not currently working
p <- 0.4:1
ggplot() + geom_function(fun = alpha, args = list(n = 100, m = 70))

