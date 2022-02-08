Group_member <- "Carbaugh Jack, Xihao Cao,Handing Zhang,Guangze Yu"


m <- seq(69,73,1)
n <- 100
p <- seq(0.4, 1, 1/n)
library(reshape2)


result <- data.frame(c(p))
for (i in m) {
    Power <- cumsum(dbinom(i,n,p))
    result[,ncol(result)+1] <- Power
    names(result)[ncol(result)] <- paste("m=",i,sep="")
}

df <- melt(result,id.vars = 'c.p.', variable.name = 'Power')

ggplot(df, aes(c.p.,value)) + 
  geom_line(aes(colour = Power)) + 
  annotate("rect", xmin=0.6, xmax=0.8, ymin=0.05, ymax=0.95, alpha=0.2, fill="red") 

