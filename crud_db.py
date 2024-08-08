import mysql.connector as connect_db
import os

conn = connect_db.connect(
    user = 'root',
    password = '',
    host = 'localhost',
    database = 'universitas'
    )

def insert_db(conn):
    tanggal_registrasi = input("Masukkan tanggal registrasi : (YYYY-MM-DD) ")
    nama = input("Masukkan nama : ")
    jenis_kelamin = input("Masukkan Jenis Kelamin : (L/P) ")
    kota = input("Masukkan kota : ")
    jurusan = input("Masukkan jurusan : ")
    angkatan = int(input("Masukkan angkatan : "))

    if jenis_kelamin.upper() == "P":
        jenis_kelamin = "P"
    elif jenis_kelamin.upper() == "L":
        jenis_kelamin = "L"

    val = (tanggal_registrasi, nama, jenis_kelamin, kota, jurusan, angkatan)
    cursor = conn.cursor()
    sql_prompt = """INSERT INTO registrasi (tanggal_registrasi, nama, jenis_kelamin, kota, jurusan, angkatan)  
                    VALUES (%s, %s, %s, %s, %s, %s)"""
    cursor.execute(sql_prompt, val)

    conn.commit()

    print(f"{cursor.rowcount} data berhasil disimpan")

# print(insert_db(conn))


def show_db(conn):
    cursor = conn.cursor()
    sql_prompt = """SELECT * 
                    FROM registrasi"""
    cursor.execute(sql_prompt)

    data_db = cursor.fetchall()

    if cursor.rowcount < 0:
        print("Tidak ada data")
        return False
    else:
        for data_in_db in data_db:
            print(data_in_db)

        return True


# print(show_db(conn))

def update_db(conn):
    cursor = conn.cursor()
    show_db(conn)

    if show_db:
        id_registrasi = int(input("Masukkan ID Registrasi : "))
        tanggal_registrasi = input("Masukkan tanggal registrasi : (YYYY-MM-DD) ")
        nama = input("Masukkan nama : ")
        jenis_kelamin = input("Masukkan Jenis Kelamin : (L/P) ")
        kota = input("Masukkan kota : ")
        jurusan = input("Masukkan jurusan : ")
        angkatan = int(input("Masukkan angkatan : "))

        if jenis_kelamin.upper() == "P":
            jenis_kelamin = "P"
        elif jenis_kelamin.upper() == "L":
            jenis_kelamin = "L"

        sql_prompt = """UPDATE registrasi 
                        SET tanggal_registrasi=%s, nama=%s, jenis_kelamin=%s, kota=%s, jurusan=%s, angkatan=%s
                        WHERE id_registrasi=%s"""

        val = (tanggal_registrasi, nama, jenis_kelamin, kota, jurusan, angkatan, id_registrasi)

        cursor.execute(sql_prompt, val)

        conn.commit()

        print(f'{cursor.rowcount} data berhasil diubah')
    else:
        print("Tidak ada data")

# print(update_db(conn))

def delete_db(conn):
    cursor = conn.cursor()
    show_db(conn)

    if show_db:
        id_regitrasi = int(input("Masukkan kode dari ID registrasi yang mau dihapus : "))

        sql_prompt = """DELETE FROM registrasi 
                        WHERE id_registrasi=%s"""

        val = (id_regitrasi,)

        cursor.execute(sql_prompt, val)

        conn.commit()

        print(f'{cursor.rowcount} data berhasil dihapus')
    else:
        print("Tidak ada data")


# print(delete_db(conn))