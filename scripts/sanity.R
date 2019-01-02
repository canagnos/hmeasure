library(hmeasure)
n = 50
set.seed(1)
y = c(rep(1, n), rep(0, n))
scores = data.frame(
  A=c(rnorm(n,0,1), rnorm(n,0.5,1)),
  B=c(rnorm(n,0,1), rnorm(n,2,1))
)
out = HMeasure(true.class = y, scores = scores)
stopifnot(out$metrics$AUC > 0.5)
stopifnot(out$metrics$AUC[2] > out$metrics$AUC[1])
