df_yuda=PlantGrowth
View(df_yuda)
model <- aov(weight~group, data=df_yuda)
summary(model)
tukey.test <- TukeyHSD(model)
tukey.test
