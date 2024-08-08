import matplotlib.pyplot as plt

def jurusan_favorit(conn):

    cursor = conn.cursor()
    sql_prompt = """
                    SELECT jurusan, COUNT(jurusan) as peminat_jurusan
                    FROM registrasi
                    GROUP BY jurusan
                    ORDER BY peminat_jurusan ASC
                """

    cursor.execute(sql_prompt)

    result = cursor.fetchall()
    conn.commit()

    jurusan = []
    for i in result:
        jurusan.append(i[0])

    peminat = []
    for i in result:
        peminat.append(i[1])

    plt.title("Jurusan yang paling diminati")
    plt.barh(jurusan, peminat)
    plt.ylabel('Jurusan')
    plt.xlabel('Total Peminat (Orang)')
    plt.show()

    return plt

def perbandingan_jk(conn):

    cursor = conn.cursor()
    sql_prompt = """
                    SELECT jenis_kelamin, COUNT(jenis_kelamin) as jumlah_jk
                    FROM registrasi
                    GROUP BY jenis_kelamin
                    ORDER BY jumlah_jk DESC
                """

    cursor.execute(sql_prompt)

    result = cursor.fetchall()
    conn.commit()

    jenis_kelamin = {}
    for i in result:
        if i[0].lower() == 'p':
            jenis_kelamin['Perempuan'] = i[1]
        elif i[0].lower() == 'l':
            jenis_kelamin["Laki-Laki"] = i[1]

    jk_labels = []
    jk_jumlah = []

    for x, y in jenis_kelamin.items():
        jk_labels.append(x)
        jk_jumlah.append(y)

    print(jk_labels)
    print(jk_jumlah)

    percentage_jk = [float(round(jk_jumlah[0]/sum(jk_jumlah)*100, 2)), float(round(jk_jumlah[1]/sum(jk_jumlah)*100, 2))]
    print(percentage_jk)

    plt.title("Perbandingan Jenis Kelamin yang Registrasi")
    plt.pie(percentage_jk, labels=jk_labels, autopct='%.1f%%')
    plt.show()

    return plt

def regis_per_year(conn):
    cursor = conn.cursor()
    sql_prompt = """
                    SELECT DATE_FORMAT(tanggal_registrasi, "%Y") AS tahun, count(*) AS jumlah_pendaftar
                    FROM registrasi
                    GROUP BY YEAR(tanggal_registrasi);
                """

    cursor.execute(sql_prompt)

    result = cursor.fetchall()
    conn.commit()

    regis_year = {}
    for i in result:
        regis_year[i[0]] = i[1]

    regis_year_label = []
    regis_year_jumlah = []

    for x, y in regis_year.items():
        regis_year_label.append(x)
        regis_year_jumlah.append(y)

    plt.title("Jumlah Registrasi Setiap Tahunnya")
    plt.plot(regis_year_label, regis_year_jumlah)
    plt.ylabel('Jumlah Registrasi (Orang)')
    plt.xlabel('Tahun')
    plt.grid()
    plt.show()

    return plt