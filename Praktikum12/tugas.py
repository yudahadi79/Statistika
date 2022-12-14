df_yuda=read.delim("clipboard")
df_yuda$brick_dummy <- ifelse(df_yuda$Brick == "Yes", 1,0)
df_yuda$N_dummy1 <- ifelse(df_yuda$Neighborhood == "West", 1,0)
df_yuda$N_dummy2 <- ifelse(df_yuda$Neighborhood == "North", 1,0)
model=lm(df_yuda$Price~df_yuda$SqFt+df_yuda$Bedrooms+df_yuda$Bathrooms+df_yuda$brick_dummy+df_yuda$N_dummy1+df_yuda$N_dummy2)
summary(model)
by(df_yuda$Price, df_yuda$Neighborhood, mean)
by(df_yuda$Price, df_yuda$Brick, mean)
