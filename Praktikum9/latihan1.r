#untuk membangkitkan data yang berdistribusi Normal adalah sebagai berikut:rnorm(n, mean = , sd = )
x=rnorm(100, 0, 1)
View(x)
hist(x)

#Menghitung peluang di bawah sebaran Normal dapat menggunakan perintah (pnorm). Perlu dicatat bahwa ketika menghitung peluang di bawah sebaran kontinu, p(X<=a) = p(X=a) + p (X<a) = 0 + p(X<a) = p(X<a)
pnorm(160, 165, 6)

#Berapa peluang menemukan seorang mhs yang tingginya lebih dari 180 cm?. 
1-pnorm(180, 165, 6)

#Jika dipilih 5 orang mahasiswa, berapa peluang terdapat 2 mahasiswa yang tingginya antara 160 dan 180 cm?
pnorm(180, 165,6) - pnorm(160, 165,6)
dbinom(2, 5, nilai dari hasil operasi diatas)

#Diasumsikan nilai tes masuk sebuah perguruan tinggi berdistribusi Normal dengan rerata 72 dan simpangan baku 15.2. Berapakah persentase peserta tes masuk yang memiliki nilai 84 atau lebih?
pnorm(84, mean=72, sd=15.2, lower.tail=FALSE)
atau:
1-pnorm(84, 72, 15.2)

#Bangkitkan (generate) data berukuran n = 1000 yang berdistribusi normal dengan:
1. Rerata tinggi badan 165 dan simpangan baku 15.
y=rnorm(1000, 165, 15)
View(y)
hist(y)
y

#Rerata nilai IPK mhs 3.12 dan simpangan baku 0.25
t=rnorm(1000, 3.12, 0.25)
View(t)
hist(t)
t

#Jika dipilih secara acak seorang mahasiswa, berapa peluang tingginya kurang dari 150cm?
pnorm(150,165,6)

#. Berapa peluang menemukan seorang mhs yang tingginya lebih dari 170 cm?
1-pnorm(170,165,6)

#Jika dipilih 7 orang mahasiswa, berapa peluang terdapat 2 mahasiswa atau kurang yang tingginya antara 150 dan 180 cm?
pnorm(180, 165,6) - pnorm(150, 165,6)
dbinom(0,7,0.9875807)+dbinom(1,7,0.9875807)+dbinom(2,7,0.9875807)
pbinom(2, 7, 0.9875807)

