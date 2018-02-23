##Clear Memory Buffer in R

rm(list=ls())

##Importing and Making File Ready in R Environment

file <- file.choose()
dataset <- read.csv(file,header=TRUE)
View(dataset)

##Structure Analysis of Dataset

str(dataset)

#MIN MAX MEAN Statistic

averagePrice_mean <- mean(dataset$avgPrice,na.rm=TRUE)
averagePrice_mean

averagePrice_min <- min(dataset$avgPrice,na.rm=TRUE)
averagePrice_min

averagePrice_max <- max(dataset$avgPrice,na.rm=TRUE)
averagePrice_max

averagePrice_variance <- var(dataset$avgPrice,na.rm=TRUE)
averagePrice_variance

averagePrice_sd <- sd(dataset$avgPrice,na.rm=TRUE)
averagePrice_sd

##Customized Quantile
##Quantiles and IQR (Inter-Quantile Range) which is Q3-Q1

quantile((dataset$avgPrice),seq(from=0.05,to=0.15,by=0.01))
IQR(dataset$avgPrice) 
#Quantile starts with an index of 0 and not 1



##Box Plot Distribution

boxplot(dataset$avgPrice,main="Average Price Plot",ylab="Price ($)")

##Histogram Distribution

hist(dataset$avgPrice,main="Average Price Histogram",xlab="Price ($)")
#The Histrogram Distribution comes out to be Right Skewed

##Range function returns both minimum and maximum values
range(dataset$avgPrice)

## Conversion into a Table

model_table <- table(dataset$avgPrice)
model_table

## Manipulating Table by using prop.table

model_table_mut <- prop.table(dataset$avgPrice)*100
model_table_mut

result_table_mut <- round(model_table_mut, digits=1) #Rounding off the results
result_table_mut

table_year <- table(dataset$year)
table_year #Returns with the number of years occuring
#Table conversion is better for the categorical data






