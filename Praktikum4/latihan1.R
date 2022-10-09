yuda=read.delim("clipboard")
View(yuda)

t.test(yuda$Volume, conf.level = 0.9)

t.test(yuda$Volume, conf.level = 0.95)
