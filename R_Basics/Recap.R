c <- 1
for(i in 1:10){
  for(j in 1:10){
    print(sprintf("%s * %s = %s", i, j, j*i))
  }
}
while(c<10){
  print(sprintf("%s * %s = %s", c, i, c*i))
  c <- c+1
}


t <- seq(1,20,2)
typeof(t)
rep(10,3)
rep(seq(1,20,2),2)
rep(c(2,3,4),each=10)


p <- c(12,32,12,42,5,6,3)
p[1]
p[-1]
p[1:3]
p[c(1,3,5)]
p[-3:-5]

my.data = 1:20
my.data
a <- matrix(my.data, 4,4)
a
a[upper.tri(a)]

a <- c(3,0,T)
b <- c(4,0,F)
c <- (a|b)
c
cb <- matriX(my.data, 4,5, byrow=T)
b = matrix(my.data, 4,5, byrow = T)
b
r1 <- c("I", "am", "happy")
r2 <- c("What", "a", "day")
r3 <- c(1,2,3)
r4 <- rbind(r1,r2,r3)
r4
