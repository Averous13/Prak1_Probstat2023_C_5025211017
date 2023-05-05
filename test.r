#Nomer 1

# a.Bagaimana pendistribusian banyak bayi laki-laki? Tentukan distribusi dengan parameter yang sesuai.
n = 10 #terdapat 10 kelahiran
p = 0.488 #probabilitas kelahiran laki-laki
q = (1 - p) #probabilitas kelahiran perempuan

#b. Berapa probabilitas bahwa tepat tiga bayi di antaranya berjenis kelamin laki-laki?
b = dbinom(3,n, p)
print("Probabilitas tepat tiga bayi di antaranya berjenis kelamin laki-laki bernilai")
print(b)
#c. Berapa probabilitas bahwa kurang dari tiga bayi di antaranya berjenis kelamin laki-laki?
c = dbinom(0,n, p) + dbinom(1,n, p) + dbinom(2,n, p)  
print("Probabilitas kurang tiga bayi di antaranya berjenis kelamin laki-laki bernilai")
print(c)
#d. Berapa probabilitas bahwa tiga atau lebih bayi di antaranya berjenis kelamin laki-laki?
d = 0
for(i in 3: n){
    d = (d + (dbinom(i, n, p)))
}
print("Probabilitas tiga atau lebih bayi di antaranya berjenis kelamin laki-laki? bernilai")
print(d)

# e.Berapa nilai harapan dan simpangan baku banyak bayi laki-laki?
varian = 0
for(i in 0: n){
    varian = (varian + ((i * i) * dbinom(i,n,p)))
}
print("nilai harapan adalah")
print(n * p)
print("nilai simpangan baku")
print(sqrt(varian))

# f. Gambarkan histogram pendistribusian banyak bayi laki-laki.
plot(0:10, dbinom(0:10,n,p), 
    type='h',
    xlab='X',
    ylab='Y',
    main='histogram distribusi bayi laki-laki')

#Nomer 2
# a. Bagaimana pendistribusian banyak kematian karena kanker tulang? Tentukan
# distribusi dengan parameter yang sesuai
lmbda = 1.8
# b. Ada 4 kematian akibat kanker tulang yang dilaporkan di kalangan pekerja
# pabrik ban, apakah itu peristiwa yang tidak biasa? Hitung probabilitas
# berdasarkan distribusi yang telah dipilih
x = 4
b = dpois(x, lmbda)
print("probabilitas kasus b")
print(b)
# c. Berapa peluang paling banyak 4 kematian akibat kanker tulang?
for(i in 0:x){
    c = c + (dpois(i,lmbda))
}
print("Peluang paling banyak 4 kematian")
print(c)

# d.Berapa peluang lebih dari 4 kematian akibat kanker tulang?
up4 = 1 - b
print("Peluang lebih dari 4 kematian")
print(up4)
# e. Berdasarkan distribusi yang telah dipilih, berapakah nilai harapan dan standar
# deviasi banyak kematian akibat kanker tulang untuk pekerja pabrik ban?
stand_dev = sqrt(lmbda)
print("standar deviasi kematian kanker tulang pekerja pabrik")
print(stand_dev)

print("nilai harapan untuk kematian kanker tulang ")
print(lmbda)
# f.Gambarkan histogram pendistribusian banyak banyak kematian akibat kanker
# tulang untuk pekerja pabrik ban.
hist(rpois(n, lmbda), main="Histogram Poison kanker tulang")
# g. Gunakan simulasi untuk memeriksa hasil sebelumnya.
g = rpois(n, lmbda)
print("simulasi menggunakan fungsi rpois")
print(g)
# h. Jelaskan banyak kematian akibat kanker tulang berdasarkan simulasi Anda.
# Bandingkan jawaban pada pertanyaan 2d dengan hasil simulasi Anda.
h = d / g
print("hasil dari perbandingan jawaban 2d dengan hasil simulasi")
print(h)
#Nomer 3
#a. Fungsi probabilitas dari distribusi Chi-Square
x <- 3
v <- 10
probchis = dchisq(x, v)
print(probchis)

# b. Histogram dari distribusi Chi-Square dengan 500 data acak.
n = 500
set.seed(10)
hist(rchisq(n,v), main = "Histogram chi-square")


# c. Nilai rataan (μ) dan varian (σ²) dari distribusi Chi-Square.
print("rataan chi-square bernilai")
print(v)
print("varian chi-square bernilai")
print(2 * v)

#Nomer 4
# a. Fungsi probabilitas dari distribusi Normal P(X1 ≤ x ≤ X2), hitung z-scorenya
# dan plot data bangkitan acaknya dalam bentuk grafik. Petunjuk (gunakan fungsi plot())
n = 100
rata = 45
valsd = 5
zscore = rnorm(n, rata, valsd)
plot(zscore)

# b. Gambarkan histogram dari distribusi Normal dengan breaks 50
hist(zscore, breaks=50, main="Histogram distribusi Normal breaks 50")

# c. Nilai varian (σ²) dari hasil data bangkitan acak distribusi Normal
print("varian bangkitan acak bernilai")
print(valsd * 2)

# Nomer5
# a. Berapa probabilitas terjadinya suatu peristiwa acak X kurang dari -2,34 dengan
# 6 derajat kebebasan?

X = -2.34
freedom = 6
a = pt(X,freedom)
print("Probabilitas peristiwa acak X kurang dari -2,34 dengan 6 derajat kebebasan")
print(a)

# b. Berapa probabilitas terjadinya suatu peristiwa acak X lebih dari 1,34 dengan 6
# derajat kebebasan
X = 1.34
freedom  =6
b = pt(X, freedom, lower.tail = F)
print("probabilitas peristiwa acak X lebih dari 1,34 dengan 6 derajat kebebasan")
print(b)

# c. Berapa probabilitas terjadinya suatu peristiwa acak X kurang dari -1,23 atau
# lebih besar dari 1,23 dengan 3 derajat kebebasan?

Xup = 1.23
Xdown = -1.23
freedom = 3
print("probabilitas peristiwa acak X kurang dari -1,23 atau lebih besar dari 1,23 dengan 3 derajat kebebasan")
c = pt(Xup, freedom, lower.tail = F) + pt(Xdown, freedom, lower.tail = T)
print(c)

# d. Berapa probabilitas terjadinya suatu peristiwa acak X berada di antara -0,94
# dan 0,94 dengan 14 derajat kebebasan?
Xup = 0.94
Xdown = -0.94
freedom = 14
print("probabilitas peristiwa acak X berada di antara -0,94 dan 0,94 dengan 14 derajat kebebasan")
d = pt(Xup, freedom) - pt(Xdown,freedom,lower.tail = T)
print(d)

# e. Berapa nilai t-score dengan 5 derajat kebebasan yang memiliki luasan 0,0333
# satuan persegi di bawah kurva dan di sebelah kiri t-score tersebut?
e = qt(0.0333, 5, lower.tail = T)
print("nilai t-score dengan 5 derajat kebebasan yang memiliki luasan 0,0333 satuan persegi di bawah kurva dan di sebelah kiri t-score")
print(e)

# f. Berapa nilai t-score dengan 25 derajat kebebasan yang memiliki luasan 0,125
# satuan persegi di bawah kurva dan di sebelah kanan t-score tersebut?
f = qt(0.125,25, lower.tail = F)
print("nilai t-score dengan 25 derajat kebebasan yang memiliki luasan 0,125 satuan persegi di bawah kurva dan di sebelah kanan t-score")
# g. Berapa nilai t-score dengan 11 derajat kebebasan yang memiliki luasan 0,75
# satuan persegi di bawah kurva dan di antara t-score tersebut dan negatif dari
# nilai t-score tersebut?
t_kiri = qt(0.375, 11, lower.tail= T)
t_kanan = qt(0.375, 11, lower.tail = F)
t_delta = t_kanan - t_kiri

g = (t_delta / 2) + qt(0.75,11)
print("nilai t-score dengan 11 derajat kebebasan yang memiliki luasan 0,75 satuan persegi di bawah kurva dan di antara t-score tersebut dan negatif dari nilai t-score")
print(g)
# h. Berapa nilai t-score dengan 23 derajat kebebasan yang memiliki luasan 0,0333
# satuan persegi di bawah kurva dan di luar interval antara t-score tersebut dan
# negatif dari nilai t-score tersebut?
t_kiri = qt(0.1665, 23, lower.tail = T)
t_kanan = qt(0.1665, 23, lower.tail = F)
t_delta = t_kanan - t_kiri

t_scor = qt(0.0333, 23, lower.tail = T)
t_score_inverse = -t_scor

if(t_scor < t_kiri){
    h = t_score_inverse
}else if( t_scor > t_kanan){
    h = t_scor
}else{
    h = qt(0.5 * (1-0.0333), 23, lower.tail = T)
}

print("nilai t-score dengan 23 derajat kebebasan yang memiliki luasan 0,0333 satuan persegi di bawah kurva dan di luar interval antara t-score tersebut dan negatif dari nilai t-score")
print(h)