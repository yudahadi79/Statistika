#Tipe Data
a <- c(1,2,-5,0.3,6,-2,4) # numeric vector
b <- c("one","two","three") # character vector
c <- c(TRUE,TRUE,TRUE,FALSE,TRUE) #logical vector
print(a)
print(b)
print(c)


#MATRIKS
cells <- c(3,15,-27,38)
r_nama <- c("R1", "R2")
c_nama <- c("C1", "C2") 
nama_matrix <- matrix(cells, nrow=2, ncol=2, byrow=TRUE,
                      dimnames=list(r_nama, c_nama))
print(nama_matrix)


#Data Frame
nama1 <- c(1,2,3,4)
nama2 <- c("red", "white", "red", NA)
nama3 <- c(TRUE,TRUE,TRUE,FALSE)
dataku <- data.frame(nama1, nama2, nama3)
names(dataku) <- c("ID","Color","Passed") # variable names 
print(dataku)

data_nama <- data.frame(id = letters[1:10], x = 1:10, y = 11:20)
print (data_nama)


install.packages("RMySQL")
install.packages("dplyr")

library(RMySQL)
con = dbConnect(MySQL(), user = 'root', password = '', dbname = 'houseprices', host = 'localhost')
dbListTables(con) 
myQuery <- "select * from yudahadiprasetyo;"
df <- dbGetQuery(con, myQuery)

library(dplyr)
df<-filter(df,Brick=="No")
print(df)

library(dplyr)
df<-filter(df,Brick=="No"&Neighborhood=="East")
print(df)
