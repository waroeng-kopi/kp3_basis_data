-- Initializing

CREATE DATABASE PERPUSTAKAAN;

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
    jabatan_petugas(255),
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

-- Inserting value

INSERT INTO Anggota (
    id_anggota, 
    kode_anggota, 
    nama_anggota, 
    jurusan_anggota, 
    no_telp_anggota, 
    alamat_anggota) 
value 
(
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

INSERT INTO Buku (
    id_buku, 
    kode_buku, 
    judul_buku, 
    penulisan_buku, 
    penerbitan_buku, 
    tahun_penerbitan, 
    stok) 
value
(
    1, 
    'P101', 
    'Umum populer non fiksi dan fiksi', 
    'Hasanudin', 
    'bukunesia',
    2011,
    10),
(2, 'P102', 'Kesehjateraan Sosial', 'Isbandi Rukminto Adi'),
(3, 'P103', 'Dasar Dasar Uroginekologi', 'Pribakti B'),
(4, 'P104', 'Cedera Kepala', ),
(5, 'P105', 'Akuntansi Pengantar 1'),
(6, 'P106', 'Kolaborasi PHP 5 dan Mysql'),
(7, 'P107', 'Kontroversi Hakim Perempuan Pada Peradilan Islam');