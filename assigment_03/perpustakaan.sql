-- Initializing

CREATE DATABASE perpustakaan;

CREATE TABLE Anggota (
    id_anggota int NOT NULL,
    kode_anggota VARCHAR(8),
    nama_anggota VARCHAR(255),
    jurusan_anggota VARCHAR(255),
    no_telp_anggota INT(20),
    alamat_anggota VARCHAR(255),
    PRIMARY KEY (id_anggota)
);

CREATE TABLE Petugas (
    id_petugas int NOT NULL,
    nama_petugas VARCHAR(255),
    jabatan_petugas VARCHAR(255),
    no_telp_petugas int(20),
    alamat_petugas VARCHAR(255),
    PRIMARY KEY (id_petugas)
);

CREATE TABLE Buku (
    id_buku int NOT NULL,
    kode_buku VARCHAR(8),
    judul_buku VARCHAR(255),
    penulisan_buku VARCHAR(255),
    penerbitan_buku VARCHAR(255),
    tahun_penerbitan int(8),
    stok int(8),
    PRIMARY KEY (id_buku)
);

CREATE TABLE Peminjaman (
    id_peminjaman int NOT NULL,
    tanggal_pinjam date,
    tanggal_kembali date,
    fk_id_buku int,
    fk_id_anggota int,
    fk_id_petugas int,
    PRIMARY KEY (id_peminjaman),
    FOREIGN KEY (fk_id_buku) REFERENCES Buku(id_buku),
    FOREIGN KEY (fk_id_anggota) REFERENCES Anggota(id_anggota),
    FOREIGN KEY (fk_id_petugas) REFERENCES Petugas(id_petugas)
);

CREATE TABLE Pengembalian (
    id_pengembalian int NOT NULL,
    denda VARCHAR(255),
    fk_id_buku int,
    fk_id_anggota int,
    fk_id_petugas int,
    PRIMARY KEY (id_pengembalian),
    FOREIGN KEY (fk_id_buku) REFERENCES Buku(id_buku),
    FOREIGN KEY (fk_id_anggota) REFERENCES Anggota(id_anggota),
    FOREIGN KEY (fk_id_petugas) REFERENCES Petugas(id_petugas)
);

CREATE TABLE Rak (
    id_rak int NOT NULL,
    nama_rak VARCHAR(255),
    lokasi_rak VARCHAR(255),
    fk_id_buku int,
    PRIMARY KEY (id_rak),
    FOREIGN KEY (fk_id_buku) REFERENCES Buku(id_buku)
);  

-- Last Import in SQL

INSERT INTO Anggota VALUES (
    1,
    'P101',
    'Handoko',
    'Ternak',
    0854246466646,
    'Ketintang timur'
),
(
    2,
    'P102', 
    'Andika', 
    'Teknologi', 
    085452154664, 
    'Pacar Keling'
),
(
    3, 
    'P103', 
    'Satriyo', 
    'Teknologi', 
    0815745499764, 
    'Kippas Anggur'
),
(
    4, 
    'P104', 
    'Ameliya Sari', 
    'Ternak', 
    081875454164, 
    'Darmo Kali selatan'
),
(
    5, 
    'P105', 
    'Permatasari Jenaka', 
    'Teknologi', 
    0815415956,   
    'Kuburan Rangkah'
);

INSERT INTO Petugas VALUES (
    1,
    'Handoko',
    'Security',
    0892812176,
    'Kembang Kuning Ujung'
),
(
    2,
    'Sucipto',
    'Pengurus',
    08854196664,  
    'Prapatan Gedangan'
),
(
    3,
    'Viina',
    'Kasir',
    08516484163,
    'JL. Kenjeran Cedekkan'
),
(
    4,
    'Kurtino',
    'Pengawas',
    081854641347,
    'JI. Pahlawan 10'
),
(
    5,
    'NunoNinu',
    'Security',
    08164354844,
    'Tambak Sari 155'
);

INSERT INTO Buku VALUES (
    1, 
    'P101', 
    'Umum populer non fiksi dan fiksi', 
    'Hasanudin', 
    'bukunesia',
    2011,
    10
),
(
    2, 
    'P102', 
    'Kesehjateraan Sosial', 
    'Isbandi Rukminto Adi',
    'Rajagrafindo Persada',
    2015,
    10
),  
(
    4, 
    'P104', 
    'Cedera Kepala', 
    'M. Z. Arifin',
    'Sagung Seto',
    2013,
    10
),
(
    5, 
    'P105', 
    'Akuntansi Pengantar 1',
    'Supardi',
    'Gava Media',
    2009,
    5
),
(
    6, 
    'P106', 
    'Kolaborasi PHP 5 dan Mysql',
    'Eko Priyo Utomo',
    'Andi Offset',
    2014,  
    8
),
(
    7, 
    'P107', 
    'Kontroversi Hakim Perempuan Pada Peradilan Islam',
    'Djamizah Muqoddas',
    'LKiS',
    2011,
    4
);


INSERT INTO Peminjaman VALUES (
    1,
    '2020-08-10',
    '2020-08-14',
    1,
    1,
    1
),
(
    2,
    '2020-05-05',
    '2020-05-11',
    2,
    2,
    2
),
(
    3,
    '2020-06-10',
    '2020-06-05',
    3,
    3,
    1
),
(
    4,
    '2020-07-05',
    '2020-07-08',
    4,
    4,
    4
),
(
    5,
    '2020-06-15',
    '2020-06-18',
    5,
    5,
    3
),
(
    6,
    '2021-10-01',
    '2021-10-10',
    7,
    5,
    4
),
(
    7,
    '2021-09-15',
    '2021-09-23',
    6,
    3,
    1
);

INSERT INTO Pengembalian VALUES (
    1,
    '5/Hari 50.000',
    1,
    1,
    1
),
(
    2,
    '5/Hari 50.000',
    2,
    2,
    2
),
(
    3,
    '5/Hari 50.000',
    3,
    3,
    1
),
(
    4,
    '3/Hari 30.000',
    4,
    4,
    4
),
(
    5,
    '3/Hari 30.000',
    5,
    5,
    3
),
(
    6,
    '8/Hari 100.000',
    7,
    5,
    4
),
(
    7,
    '8/Hari 100.000',
    6,
    3,
    1
);

INSERT INTO Rak VALUES (
    1, 'Umum', 'Tengah', 1
),
(
    2, 'Umum', 'Tengah', 2
),
(
    3, 'Umum', 'Tengah', 3
),
(
    4, 'Sejarah', 'Utara', 4
),
(
    5, 'Sejarah', 'Utara', 5
),
(
    6, 'Website', 'Barat', 6
),
(
    7, 'Sejarah', 'Utara', 7
),