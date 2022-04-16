matri = c(c(1,2,3,4,5,5), c(2,5,3,6,9,3))
matri
my.data = 1:20
a = matrix(my.data, 4,5)
a
a[2,4]
b = matrix(my.data, 4,5, byrow = T)
Tb

r1 <- c("I", "am", "happy")
r2 <- c("What", "a", "day")
r3 <- c(1,2,3)
C <- rbind(r1,r2,r3)
C


c1 <- 1:5
c2 <- -1:-5
d <- cbind(c1,c2)
d



#Named Vectors
Charlie <- 1:5
Charlie
names(Charlie)

names(Charlie) <- c("a","b","c","d","e")
Charlie
Charlie["e"]
Charlie[5]


names(Charlie) <- NULL
Charlie
names(Charlie)
file.


#naming matrix dimensions 1
tem_vec = rep(c("a","f","gg"), each =3)
tem_vec
bravo <- matrix(tem_vec, 3, 3)
bravo

rownames(bravo) <- c("dsa","dga","gfd")
colnames(bravo) <- c("bg", "gt","lo")
bravo
bravo["dga","lo"] <- "gg report jg"
bravo

Games
FieldGoals

round(FieldGoals/Games,1)
round(MinutesPlayed/Games)
MinutesPlayed


FieldGoals
t(FieldGoals)


matplot(t(FieldGoals), type = "b", pch = 15:18, col = c(1:4,6))
legend("bottomleft", inset = 0.01, legend = Players, col=c(1:4,6),
       pch = 15:18,horiz = F)


Games[1:3,]
Games[1:3, 5:10]
Games[c(1,10),]
Games[,c("2008", "2009")]
Games[1,]
Games[1,5]

is.vector(Games[1,])
is.matrix(Games[1,])

Games[1,,drop=F]
Games[1,5, drop=F]

data <- MinutesPlayed[1,,drop=F]
matplot(t(data), type = "b", pch = 15:18, col = c(1:4,6))
legend("bottomleft", inset = 0.01, legend = Players[1], col = c(1:4,6),
       pch = 15:18, horiz = F)

plot <- function(data, rows=1:10){
  data <- data[rows,,drop=F]
  matplot(t(data), type = "b", pch = 15:18, col = c(1:4,6))
  legend("bottomleft", inset = 0.01, legend = Players[rows], col = c(1:4,6),
         pch = 15:18, horiz = F)
}
plot(MinutesPlayed/Games, 2:8)
