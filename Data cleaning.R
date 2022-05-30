# We will remove unnecessary columns from the data
sampl1=select(Sample_sales_data_excel,-c('Row ID', `Order Date`,`Postal Code`,'Region',`Ship Date`,'Segment','State',`Customer Name`,'Country','Category','City','Discount',`Sub-Category`))
print(sampl1)

