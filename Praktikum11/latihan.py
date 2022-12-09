df_yuda = read.delim("clipboard")
View(df_yuda)
head(df_yuda)
model <- aov(korosi~metode, data=df_yuda)
summary(model)
tukey.test <- TukeyHSD(model)
tukey.test
