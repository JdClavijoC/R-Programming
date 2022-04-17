x <- 0:5
type(x)
typeof(x)
class(x)
as.character(x)
as.logical(x)
x <- c("a","b","c")
as.numeric(x)
as.logical(x)
as.complex(x)

z <- list(1,"a", TRUE, 1, 4i)
z[1]


m <- matrix(nrow=2,ncol=3)
m
m[1,1] = 31
dim(m)
attributes(m)


m <- matrix(1:6, nrow=2, ncol=3)
m
m <- 1:10
dim(m) <- c(2,5)
m

x <- 1:3
y <- 10:12
cbind(x,y)
rbind(x,y)

x <- factor(c("yes", "no", "yes", "yes","no", "yes"))
x
table(x)
unclass(x)

t <- factor(c("yes", "yes", "no", "no", "yes", "yes"), levels = c("yes", "no"))
t
NaN => OPERACIONES MATEMATICAS INDEFINIDAS
NA => CUALQUIER OTRO CASO

r <- c(2,31,4,NA, 3, NaN)
is.na(r)

x <- data.frame(foo = 1:6, bar = c(T,T,T,T,F,F))
x
ncol(x)
nrow(x)


x <- 1:3
names(x)
names(x) <- c("jesus", "david", "clavijo")
x

x <- list(a = 1, b = 2, c = 3)
x
m <- matrix(1:4, nrow = 2, ncol=2)
dimnames(m) <- list(c("a","b"), c("b","c"))
m

y <- list(foo = 1:4, bar = 0.6)
y[1]
y$bar
y$foo
y
x <- list(foo = 1:4, bar = .6, baz = "Hellow")
x[c(1,3)]

name <- "foo"
x[[name]]




x <- list(a=c(10,12,14), b=c(3.14,2.81))
x
x[[c(1,3)]]
x[[1]][[3]]
x[[c(2,1)]]


x <- matrix(1:6, 2,3)
x
x[1,2]
x[2,1]
x[1,]
x[,2]
x[1, 2, drop=FALSE]
x[1, , drop=FALSE]
x <- list(aacarkat=1:5)
x$a
x[["a"]]
x[["a", exact=FALSE]]



x <- c(1,2,NA,4,NA,5)
bad <- is.na(x)
x[!bad]
x[bad]


x <- c(1, 2, NA, 4, NA, 5)
y <- c("a","b",NA,"d",NA,"f")
good <- complete.cases(x, y)
good
x[good]
y[good]

x <- 1:5; y <- 6:10
x + y
x>2


x <- matrix(1:4, 2, 2); y <- matrix(rep(10,4), 2, 2)
x*y
x/y
x%*%y


x <- c(4, T)
x
typeof(x)

x <- c(1,3,5); y <- c(3,2,10)
rbind(x,y)
x <- list(2,"a","b",T)
x[[1]]
typeof(x)

x <- c(3,5,1,10,12,6)
x[x<6]==0
x[x==0]<6

x[x==0]<-6


x <- data.frame("R_Basics/hw1_data.csv")
x <- read.table("R_Basics/hw1_data.csv", sep = ",", header = 1)
head(x)
colnames(x) <- NULL
head(x)


x[c(1,2),]
length(x)
str(x)
summary(x)

x[c(152,153),]

x[47,1]
sum(is.na(x$Ozone))
y <- is.na(x$Ozone)

mean(x$Ozone,na.rm = T)

g <- x[x$Ozone>31 & x$Temp>90,]
g
mean(g$Solar.R,na.rm = T)
mean(x$Temp,na.rm = T)[x$Month==6]
h <- x$Month==6
typeof(h)
t <- x[h,]
mean(t$Temp, na.rm = T)
t

max(x$Ozone)
x
l <- x[x$Ozone & x$Month==5,]
max(x$Ozone,na.rm = T)[x$Month==5]
max(l$Ozone, na.rm = T)
