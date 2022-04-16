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

my_df = data.frame(Countries_2012_Dataset, Codes_2012_Dataset,
                   Regions_2012_Dataset)

a <- list("10", T, 5.6)
is.character(a[1])
is.logical(a[1])
is.numeric(a[1])
is.list(a[1])
head(my_df)
colnames(my_df) <- c("County", "Codes", "Regions")
head(my_df)

x <- as.Date("2018-10-1")

month(x)
months(x)
attr(x)
as.mont
x <- c(21L, 43L, 52L)
C <- median(X)
typeof(C)


my_df = data.frame(Country=Countries_2012_Dataset, Codes=Codes_2012_Dataset,
                   Regions=Regions_2012_Dataset)
head(my_df)

merged <- merge(df, my_df, by.x="Country.Code", by.y="Code")

factorr = factor(my_df$Regions)
factorr

movies = read.csv("R_Basics/P2-Movie-Ratings.csv")
library(ggplot2)
colnames(movies) <- c("Film", "Gender", "Rotten", "Audience", "Budget", "Year")
movies
ggplot(data=movies, aes(x=movies$Gender, y=movies$Audience, colour=movies$Gender,
                        size=movies$Budget))+ geom_point()

str(movies)


s <- ggplot(movies, aes(movies$Budget))
s+geom_histogram(binwidth = 10, aes(fill=movies$Gender))
s+geom_density(aes(fill=movies$Gender))
s+geom_density(aes(fill=movies$Gender, position="stack"))

t <- ggplot(movies, aes(movies$Audience))
t + geom_histogram(binwidth = 10, fill="White", colour="Blue")

t + geom_histogram(binwidth = 10, aes(movies$Rotten, fill="White", colour="Blue"))

u <- ggplot(movies, aes(movies$Audience, movies$Budget, colour=movies$Rotten))
u + geom_point() + geom_smooth()


b <- ggplot(movies, aes(movies$Audience, movies$Budget, colour=movies$Gender))
b + geom_boxplot()
b + geom_boxplot(size=1.2)
b + geom_boxplot(size=1.2) + geom_point()
b + geom_boxplot(size=1.2) + geom_jitter()

#Facests
y <- ggplot(movies, aes(movies$Budget))
y + geom_histogram(binwidth = 10, aes(fill=movies$Gender), colour="Black")

#Using facets
y + geom_histogram(binwidth = 10, aes(fill=movies$Gender), colour="Black") + 
  facet_grid(movies$Gende~., scales="free")



#Scatter
g <- ggplot(movies, aes(movies$Audience, movies$Budgetm, colour=movies$Gender))
g + geom_point(size=3)

#Facets
g + geom_point(size=3) + facet_grid(movies$Gender~.,)
g + geom_point(size=3) + facet_grid(.~movies$Year)
g + geom_point(size=3) + facet_grid(movies$Gender~movies$Year)


