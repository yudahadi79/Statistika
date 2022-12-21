#1
Dataku_yuda = read.delim("clipboard")
View(Dataku_yuda)
wilcox.test(Dataku_yuda$Sebelum,Dataku_yuda$Setelah,paired=TRUE)

#2
df_yuda=read.delim("clipboard")
# Independent 2-group Mann-Whitney U Test
wilcox.test(df_yuda$Sebelum,df_yuda$Sesudah,paired=TRUE)

#3
df_yuda=read.delim("clipboard")
# independent 2-group Mann-Whitney U Test
wilcox.test(df_yuda$obat~df_yuda$grup)
# where y is numeric and A is A binary factor
head(df_yuda)
rank(df_yuda$obat)
