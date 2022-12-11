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
    denda ,
    fk_id_buku,
    fk_id_anggota,
    fk_id_petugas
);