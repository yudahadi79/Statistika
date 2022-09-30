data_yuda = read.csv("C:/Users/Yuda Hp/PraktikumStatistika/data.csv")
View(data_yuda)
yuda <- data_yuda[4]  
View(yuda)  
yuda$Tinggi.Badan <- ifelse(yuda$Tinggi.Badan > 160, c("Tinggi"), c("Pendek"))
View(yuda)
yuda$Jurusan <- "infor21"
View(yuda)
yuda$Fakultas <- "FTI"
View(yuda)
yuda$Fakultas <- NULL
View(yuda)
nama_gender<-data_yuda[,1:2]
View(nama_gender)
angkatan_tinggi=data_yuda[,3:4]
View(angkatan_tinggi)
gabung<-cbind(nama_gender,angkatan_tinggi)
View(gabung)
bar1_5=data_yuda[1:5,]
View(bar1_5)
bar25_30=data_yuda[25:30,]
View(bar25_30)
gabungbar=rbind(bar1_5,bar25_30)
View(gabungbar)
sorting=data_yuda[order(data_yuda$Waktu.Perjalanan),]
View(sorting)
