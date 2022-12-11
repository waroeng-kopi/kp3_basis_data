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
