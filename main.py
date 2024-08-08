import crud_db
import visualisasi

def conn():
    conn = crud_db.conn
    return conn

def crud():
    print("-----------------")
    print(" Organisasi Data ")
    print("-----------------")
    print("1. Tampilkan Data")
    print("2. Masukkan Data")
    print("3. Update Data")
    print("4. Hapus Data")
    print("0. Kembali (Y/y) ")

    pilihan_pengguna = input("Masukkan yang mau dilakukan di aplikasi : ")

    if pilihan_pengguna == "1":
        crud_db.show_db(conn())
    elif pilihan_pengguna == "2":
        crud_db.insert_db(conn())
    elif pilihan_pengguna == "3":
        crud_db.update_db(conn())
    elif pilihan_pengguna == "4":
        crud_db.delete_db(conn())
    elif pilihan_pengguna.lower() == "y":
        main()
    else:
        print("Tolong masukkan input yang benar!!!")

def visualisasi_data():
    print('--------------------------------------------')
    print('-------------Visualisasi Data---------------')
    print('--------------------------------------------')
    print('1. Jurusan Favorit')
    print('2. Registrasi Setiap Tahunnya')
    print('3. Perbandingan Jenis Kelamin yang Terdaftar')
    print("0. Kembali (Y/y) ")

    pilihan_pengguna = input("Masukkan yang mau dilakukan di aplikasi : ")

    if pilihan_pengguna == "1":
        visualisasi.jurusan_favorit(conn())
    elif pilihan_pengguna == "2":
        visualisasi.regis_per_year(conn())
    elif pilihan_pengguna == "3":
        visualisasi.perbandingan_jk(conn())
    elif pilihan_pengguna.lower() == "y":
        exit()
    else:
        print("Tolong masukkan input yang benar!!!")

def main():
    print('-------------------------------')
    print('Selamat Datang di Aplikasi')
    print('-------------------------------')
    print('1. Crud DB')
    print('2. Analisis dan Visualiasi Data')
    print('0. Exit (Y/y)')

    pilihan_pengguna = input("Masukkan yang mau dilakukan di aplikasi : ")

    if pilihan_pengguna == "1":
        crud()
    elif pilihan_pengguna == "2":
        visualisasi_data()
    elif pilihan_pengguna.lower() == "y":
        exit()
    else:
        print("Tolong masukkan input yang benar!!!")


if __name__ == "__main__":
    while(True):
        main()