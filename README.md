# analysis-of-profit-from-a-sample-sales-data
This is a repository on importing data in R,  cleaning of the data, analysis and presentation.  
library(readxl)
Sample_sales_data_excel <- read_excel("C:/Users/Mutethia Kigea/Downloads/Sample-sales-data-excel.xlsm")
View(Sample_sales_data_excel)
attach(Sample_sales_data_excel)
Sample_sales_data_excel
# We will remove unnecessary columns from the data
sampl1=select(Sample_sales_data_excel,-c('Row ID', `Order Date`,`Postal Code`,'Region',`Ship Date`,'Segment','State',`Customer Name`,'Country','Category','City','Discount',`Sub-Category`))
print(sampl1)
summary(Sample_sales_data_excel)
summary(sampl1)
summary(sampl1$Profit)
mean(profit)
sampleanalysis=lm(Sales~Quantity,data = sampl1)
sampleanalysis
summary(sampleanalysis)
#Checking for normality
hist(sampl1$Profit)
hist(sampl1$Quantity)
hist(sampl1$Sales)

#Checking for linearity
plot(sampl1$Profit)
plot(sampleanalysis)

#Analysis presentation
plot(sampleanalysis)
# Data will be presented using powerbi 
# Data will be stored using MySQL
