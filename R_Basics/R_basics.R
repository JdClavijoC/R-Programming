#Integer 
x <- 2L
typeof(x)

#double 
d <- 2.5
typeof(d)

#Complex
z <- 2 + 3i
typeof(z)

#Character
a <- "h"
typeof(a)

#Logical
v <- T
typeof(v)
f <- F
typeof(f)

################################

A <- 10
B <- 5
C <- A+B

var1 = 2.4
var2 = 4
r = var1 / var2

answer = sqrt(var2)

greeting = "Hello"
name = "Jesus"
message <- paste(greeting, name)
message

# ==, !=, <, >, <=, >=, !, |, &, isTRUE(X)
result <- 4>5
result
isTRUE(result)


counter <- 1
while(counter < 10){
  print(counter)
  counter <- counter + 1
}


for(i in 1:5){
  print("Hello")
}

for(i in 5:10){
  print("Hellow")
}


rm(m)
m <- rnorm(1)
if(m > 1){
  print("Great!!!")
}


for(i in rnorm(100)){
  print(i)
}

