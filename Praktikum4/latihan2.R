yuda=read.delim("clipboard")
View(yuda)

t.test(yuda$Volume, conf.level = 0.5)
