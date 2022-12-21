#Tugas 1
dataku_yuda=read.delim("clipboard")
wilcox.test(dataku_yuda$Ganjil,dataku_yuda$Genap,paired=TRUE)

#Tugas 2
df_yuda = read.delim("clipboard")
#independent 2-group Mann-Whitney U Test
wilcox.test(df_yuda$caffeine,df_yuda$placebo,paired=TRUE)
#where is numeric and A is A binary factor
head(df_yuda)
rank(df_yuda$caffeine)
rank(df_yuda$placebo)
