y = c(0, 0, 1, 0, 0, 1, 1, 0, 1, 1)
s = c(0, 0.1, 0.2, 0.3, 0.3, 0.5, 0.6, 0.8, 0.8, 0.9)
n1 = sum(y)

tapply(y,s,sum)/sum(y)
tapply(1-y,s,sum)/(sum(1-y))
