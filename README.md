# Prak1_Probstat2023_C_5025211017
Praktikum modul satu probabilitas dan statistika 

## Nomer 1
Probabilitas seorang bayi yang baru lahir berjenis kelamin laki-laki adalah 0,488.Jika kita asumsikan bahwa dalam satu hari di rumah sakit terdapat 10 kelahiran,
maka:
### a.Bagaimana pendistribusian banyak bayi laki-laki? Tentukan distribusi dengan parameter yang sesuai.
Berdasarkan kasus diatas kita mendapati dua parameter berupa probabilitas kelahiran bayi laki-laki. Dimana disini aka terdapat dua kemungkinan saja yaitu laki-laki atau perempuan. Percobaan didapat pada 10 kelahiran. Maka kasus ini cocok menggunakan distribusi binomial.
```
n = 10 #terdapat 10 kelahiran
p = 0.488 #probabilitas kelahiran laki-laki
q = (1 - p) #probabilitas kelahiran perempuan
```

### b. Berapa probabilitas bahwa tepat tiga bayi di antaranya berjenis kelamin lakilaki?
Untuk penyelesaian kita menggunakan fungsi dbinom, dengan parameter n menjadi bernilai n = 3

### c. Berapa probabilitas bahwa kurang dari tiga bayi di antaranya berjenis kelamin laki-laki?
parameter n maka akan menjadi n < 3

### d. Berapa probabilitas bahwa tiga atau lebih bayi di antaranya berjenis kelamin laki-laki?
parameter n maka akan menjadi 3 < n < 10
maka dari itu perhitungan akan dilakukan secara iteratif sebanyak 3 sampai dengan jumlah kelahiran
![Nomer 1 a - d](https://github.com/Averous13/Prak1_Probstat2023_C_5025211017/blob/main/Nomer%201a-d.png)

### e. Berapa nilai harapan dan simpangan baku banyak bayi laki-laki?
![Nomer 1 e-f](https://github.com/Averous13/Prak1_Probstat2023_C_5025211017/blob/main/Nomer1e-f.png)

### f. Gambarkan histogram pendistribusian banyak bayi laki-laki.
![Histogram Bayi laki-laki](https://github.com/Averous13/Prak1_Probstat2023_C_5025211017/blob/main/plot1.png)

# Nomer2
Misalkan banyak kematian karena kanker tulang untuk seluruh pekerja di pabrik ban dalam 20 tahun ke depan adalah 1,8.
### a. Bagaimana pendistribusian banyak kematian karena kanker tulang? Tentukan distribusi dengan parameter yang sesuai.
Berdasarkan kasus kita mendapati sebuah rata rata dalam sebuah interval tertentu, maka dari situ disimpulkan untuk menggunakan distribusi poisson
### b. Ada 4 kematian akibat kanker tulang yang dilaporkan di kalangan pekerja pabrik ban, apakah itu peristiwa yang tidak biasa? Hitung probabilitas berdasarkan distribusi yang telah dipilih.
parameter dari jumlah akan menjadi x = 4 
### c. Berapa peluang paling banyak 4 kematian akibat kanker tulang?
untuk kematian paling banyak 4 menjadi maka x < 4, perhitungan dilakukan secara iteratif dari 0 sampai 3
### d. Berapa peluang lebih dari 4 kematian akibat kanker tulang?
untuk itu karena kita tidak tahu jumlah total dari pekerja pabrik maka bisa dikatakan keseluruhan probabilitas untuk semua adalah 1. Maka semua dikurangi dari kematian dibawah 4
![Nomer 2a-d](https://github.com/Averous13/Prak1_Probstat2023_C_5025211017/blob/main/nomer2a-d.png)
### f. Gambarkan histogram pendistribusian banyak banyak kematian akibat kanker tulang untuk pekerja pabrik ban
untuk menggambarkannya kita gunakan fungsi hist dengan parameter dari distribusi poisson
![Histogram kematian kanker tulang](https://github.com/Averous13/Prak1_Probstat2023_C_5025211017/blob/main/histpois.png)
### g. Gunakan simulasi untuk memeriksa hasil sebelumnya
pada simulasi kita gunakan fungsi rpois, yang akan dijadikan pada perbandingan soal berikutnya
### h. Jelaskan banyak kematian akibat kanker tulang berdasarkan simulasi Anda.Bandingkan jawaban pada pertanyaan 2d dengan hasil simulasi Anda.
karena melakukan perbandingan tinggal kita rasiokan jawaban soal g dengan d
![Nomer 2d-h](https://github.com/Averous13/Prak1_Probstat2023_C_5025211017/blob/main/Nomer2d-h.png)

# Nomer3
Diketahui nilai x = 3 dan v = 10. Tentukan:
### a. Fungsi probabilitas dari distribusi Chi-Square.

### b. Histogram dari distribusi Chi-Square dengan 500 data acak
Kita disini untuk membuat data bangkitan acak kita gunakan rchisq
![histogram chisquare](https://github.com/Averous13/Prak1_Probstat2023_C_5025211017/blob/main/hischisq.png)
### c. Nilai rataan (μ) dan varian (σ²) dari distribusi Chi-Square.
Nilai rataan pada distribusi chi-square kita dapatkan dari nilai v dan varian kita peroleh dari 2 * v
![Nomer 3](https://github.com/Averous13/Prak1_Probstat2023_C_5025211017/blob/main/Nomer3.png)
# Nomer4
Diketahui data bangkitan acak sebanyak 100 dengan mean = 45 dan sd = 5.
Tentukan:

### a. Fungsi probabilitas dari distribusi Normal P(X1 ≤ x ≤ X2), hitung z-scorenya dan plot data bangkitan acaknya dalam bentuk grafik. Petunjuk (gunakan fungsi plot()).
Untuk distribusi normal, kita plot berdasarkan zscore. nilai dari zscore kita peroleh dari nilai bangkitan acak berdasarkan kasus soal
![Distribusi normal](https://github.com/Averous13/Prak1_Probstat2023_C_5025211017/blob/main/plotrnorm.png)
### b. Gambarkan histogram dari distribusi Normal dengan breaks 50
![Histogram distribusi normal](https://github.com/Averous13/Prak1_Probstat2023_C_5025211017/blob/main/hisnorm.png)
### c. Nilai varian (σ²) dari hasil data bangkitan acak distribusi Normal.
nilai varian akan dihitung dari nilai sd * 2

# Nomer5
Kerjakanlah menggunakan distribusi T-Student.

### a. Berapa probabilitas terjadinya suatu peristiwa acak X kurang dari -2,34 dengan 6 derajat kebebasan?

### b. Berapa probabilitas terjadinya suatu peristiwa acak X lebih dari 1,34 dengan 6 derajat kebebasan?

### c. Berapa probabilitas terjadinya suatu peristiwa acak X kurang dari -1,23 ataulebih besar dari 1,23 dengan 3 derajat kebebasan?

### d. Berapa probabilitas terjadinya suatu peristiwa acak X berada di antara -0,94 dan 0,94 dengan 14 derajat kebebasan?

### e. Berapa nilai t-score dengan 5 derajat kebebasan yang memiliki luasan 0,0333 satuan persegi di bawah kurva dan di sebelah kiri t-score tersebut?

### f. Berapa nilai t-score dengan 25 derajat kebebasan yang memiliki luasan 0,125 satuan persegi di bawah kurva dan di sebelah kanan t-score tersebut?

### g. Berapa nilai t-score dengan 11 derajat kebebasan yang memiliki luasan 0,75 satuan persegi di bawah kurva dan di antara t-score tersebut dan negatif dari nilai t-score tersebut?

### h. Berapa nilai t-score dengan 23 derajat kebebasan yang memiliki luasan 0,0333 satuan persegi di bawah kurva dan di luar interval antara t-score tersebut dan negatif dari nilai t-score tersebut?





