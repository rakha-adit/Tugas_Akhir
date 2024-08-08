import random


tanggal = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30]
bulan = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
bulan_kata = [
    "Januari", "Februari", "Maret", "April", "Mei", "Juni",
    "Juli", "Agustus", "September", "Oktober", "November", "Desember"
]
tahun = [2018, 2020, 2021, 2022, 2023, 2024]
nama_depan = ['Ayu', 'Budi', 'Citra', 'Dedi', 'Eka', 'Fajar', 'Gita', 'Hadi', 'Ika', 'Joko', 'Yulis', 'Patricia', 'Amanda', 'Deddy', 'Raymond', 'Asep', 'Siti', 'Desti', 'Nina', 'Felicia', 'Mita', 'Desnita', 'Rana', 'Renanta']
nama_belakang = ['Santoso', 'Wibowo', 'Suryadi', 'Wijaya', 'Saputra', 'Putri', 'Pratama', 'Yulianto', 'Wibisono', 'Hartono', 'Elisa', 'Aditya', 'Prakoso', 'Azizah', 'Setiawati', 'Awangga', 'Saputri']
jenis_kelamin = ['L', 'P']
kota = ['Jakarta', 'Surabaya', 'Bandung', 'Medan', 'Bekasi', 'Depok', 'Tangerang', 'Palembang', 'Semarang', 'Makassar']
jurusan = [
        'Teknik Informatika', 'Teknik Mesin', 'Teknik Elektro', 'Teknik Sipil', 
        'Teknik Kimia', 'Biologi', 'Fisika', 'Matematika', 'Bisnis', 
        'Ekonomi', 'Psikologi', 'Sosiologi', 'Ilmu Politik', 'Sejarah', 'Filsafat'
    ]
angkatan = []


new_tgl = []
new_bln = []
new_thn = []
new_nm = []
new_jeke = []
new_kt = []
new_jurus = []
new_angkat = []

for i in range(100):
    new_tanggal = random.choice(tanggal)

    new_bulan = random.choice(bulan)

    new_nama = f'{random.choice(nama_depan)} {random.choice(nama_belakang)}'

    new_tahun = random.choice(tahun)

    new_jk = random.choice(jenis_kelamin)

    new_kota = random.choice(kota)

    new_jurusan = random.choice(jurusan)

    if new_bulan > 6:
        tahun_new = random.choice(tahun)
        tahun_baru = tahun_new + 1
    else:
        tahun_baru = random.choice(tahun)

    new_tgl.append(new_tanggal)
    new_bln.append(new_bulan)
    new_thn.append(new_tahun)
    new_nm.append(new_nama)
    new_jeke.append(new_jk)
    new_kt.append(new_kota)
    new_jurus.append(new_jurusan)
    new_angkat.append(tahun_baru)


tuple_list = []

for j in range(100):
    formatbaru = (str(f'{new_thn[j]}-{new_bln[j]}-{new_tgl[j]}'), new_nm[j], new_jeke[j], new_kt[j], new_jurus[j], new_angkat[j])
    tuple_list.append(formatbaru)

print(tuple_list)
print(len(tuple_list))