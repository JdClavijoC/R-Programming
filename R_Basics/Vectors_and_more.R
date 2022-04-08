vector1 <- c(32,4654,876,52,6532)
vector2 <- c(321L, 3443L, 5L, 432L)
is.numeric(vector1)
is.numeric(vector2)
is.integer(vector1)
is.integer(vector2)
is.double(vector1)
is.double(vector2)

vector3 <- c("da","fdsc","gfeko", 9)
is.numeric(vector3)

seq(1,20,2)

rep(3, 10)
rep(seq(10),10)
rep(c(5,6),each=10)
c(80,20)


w <- c("a", "b", "c", "d", "e")
w[1]
w[2]
w[3]
w[-1]
v <- w[-3]
w[1:3]
w[3:5]
w[c(1,2,3)]
w[c(-2,-4)]
w[-3:-5]
w[1:2]



N <- 100
a <- rnorm(N)
a[1]
b[1]
b <- rnorm(N)
c <- a*b


d <- rep(NA, N)
for(i in seq(N)){
  d[i] <- a[i] * b[i]
}
d


revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28,
             9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73,
              5821.12, 6976.93, 16618.61, 10054.37, 3803.96)
mean(revenue)
beneficios <- round((revenue - expenses),digits = 2)
beneficios
beneficios_30 <- (revenue*.7)-expenses
beneficios_30
beneficios_por_mes <- beneficios_30/revenue
buenos_meses <- beneficios_30 > mean(revenue)
malos_meses <- beneficios_30 < mean(revenue)
malos_meses
mejor_mes <- max(beneficios_30)
peor_mes <- min(beneficios_30)

mejor_mes
peor_mes
