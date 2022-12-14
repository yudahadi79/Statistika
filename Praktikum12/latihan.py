df_yuda=read.delim("clipboard")
head(df_yuda)
model_reg=lm(df_yuda$Y~df_yuda$X)
summary(model_reg)
