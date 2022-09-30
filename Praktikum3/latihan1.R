data_yuda = read.csv("C:/Users/Yuda Hp/PraktikumStatistika/houseprices.csv")
View(data_yuda)
yuda <- data_yuda[data_yuda$Bedrooms==2,]  
View(yuda)
yuda$Bathrooms <- ifelse(yuda$Bathrooms > 2, c("large"), c("small"))
View(yuda)
yuda$newvariable <- ifelse(yuda$Offers > 2, c("large"), c("small")) 
View(yuda)
yuda$newvariable <- yuda$Price/yuda$SqFt
View(yuda)
yuda$newvariable<-NULL
View(yuda)
data_yuda.kolom1dan2 <- data_yuda[,1:2] 
View(data_yuda.kolom1dan2)
data_yuda.kolom3dan4 <- data_yuda[,3:4] 
View(data_yuda.kolom3dan4)
data_yuda.kolom1sd4<-cbind(data_yuda.kolom1dan2, data_yuda.kolom3dan4) 
View(data_yuda.kolom1sd4)
data_yuda.baris1sd3 <- data_yuda[1:3,] 
data_yuda.baris4sd6 <- data_yuda[4:6,] 
data_yuda.baris1sd6 <- rbind(data_yuda.baris1sd3, data_yuda.baris4sd6) 
View(data_yuda.baris1sd6)
data_yuda.sort<-data_yuda[order(data_yuda$Price),] 
View(data_yuda.sort)
