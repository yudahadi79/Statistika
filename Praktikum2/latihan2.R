library(RMySQL)
yud = dbConnect(MySQL(), user = 'root', password = '', dbname = 'ps2_yuda', host = 'localhost')
dbListTables(yud) 
myQuery <- "select * from yudahadiprasetyo;"
df <- dbGetQuery(yud, myQuery)
print(df) #untuk mencetak data frame tanpa filter


library(dplyr)
df<-filter(df,Gender=="P") #untuk menfilter data perempuan
df<-filter(df,Gender=="L") #untuk menfilter data laki-laki
print(df)
