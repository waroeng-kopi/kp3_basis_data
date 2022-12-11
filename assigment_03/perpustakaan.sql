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
    id_peminjaman,
    tanggal_pinjam,
    tanggal_kembali,
    fk_id_buku,
    fk_id_anggota,
    fk_id_petugas
);