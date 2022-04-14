read.csv("R_Basics/P2-Demographic-Data.csv")
# Method 1
df <- read.csv(file.choose())

#Method 2
getwd()
setwd()
df <- read.csv("R_Basics/P2-Demographic-Data.csv")
df
nrow(df)
ncol(df)
head(df)
tail(df)
head(df, 10)
tail(df,10)
str(df)
summary(df)


df$Internet.users
df
levels(df$Income.Group)
levels(df)

df[,c(1,3,5)]
is.data.frame(df[,c(2,3)])# nO NEED FOR DROP=T
is.data.frame(df[,1, drop=F])


df$calculate <- df$Birth.rate * df$Internet.users
head(df)
df$dsa <- 1:5
head(df)
df$dsa <- NULL
head(df)

filter <- df$Internet.users < 2
df[filter, ]
df[df$Internet.users<2 & df$Birth.rate<40,]
df[df$Country.Name=="Ethiopia",]
