#Agus berencana ke Bandung esok hari lewat tol cipularang. Berapakah peluang waktu perjalanan yang ditempuh Agus berkisar 125 hingga 158 menit?
pnorm(158, 175,30) - pnorm(125, 175,30)

#Berapakah pula peluang waktu perjalanan Agus tersebut dapat lebih dari 2,5 jam? 
#2.5 jam = 150 menit
pnorm(150,175,30,lower.tail = FALSE)
