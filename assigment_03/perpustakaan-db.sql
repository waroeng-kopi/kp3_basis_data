SHOW DATABASES;   -- showing database in directory

CREATE DATABASE Perpustakaan;

USE Perpustakaan;
CREATE TABLE Anggota(
    id_anggota char(8) primary key,
    kode_anggota varchar(5),
    nama_anggota varchar(50),
    jurusan_anggota varchar(50),
    no_telp_anggota int(20)
    alamat_anggota varchar(50)
);
desc Anggota; -- sort the query in table 

-- Input Anggota Table
INSERT INTO Anggota VALUES
('1','P101','Handoko','Ternak', 0854246466646, 'Ketintang Timur'),
('2','P102','Andika','Teknologi', 085452154664, 'Pacar Keling'),
('3','P103','Satriyo','Teknologi', 0815745499764, 'Kippas Anggur'),
('4','P104','Ameliya Sari','Ternak', 081875454164, 'Darmo Kali Selatan'),
('5','P105','Permatasari Jenaka','Teknologi', 0815415956, 'Kuburan Rangkah');
SELECT * FROM Anggota; -- showing columns Anggota Table 

CREATE TABLE Petugas(
    id_petugas char(8) primary key,
    nama_petugas varchar(50),
    jabatan_petugas varchar(50),
    no_telp_petugas int(20),
    alamat_petugas varchar(50)
);
desc Petugas;

INSERT INTO Petugas VALUES
('1','Handoko','Security',0892812176,'Kembang Kuning Ujung'),
('2','Sucipto','Pengurus',08854196664,'Prapatan Gedangan'),
('3','Viina','Kasir',08516484163,'Jl. Kenjeran Cedekkan'),
('4','Kurtino','Pengawas',081854641347,'Jl. Pahlawan 10'),
('5','NunoNinu','Security',08164354844,'Tambak Sari 155');
SELECT * FROM Petugas;

CREATE TABLE Buku(
    id_buku char(8) primary key,
    kode_buku varchar(5),
    judul_buku varchar(50),
    penulis_buku varchar(50),
    penerbit_buku varchar(50),
    tahun_terbit int(5),
    stok int(255)
);
desc Buku;

INSERT INTO Buku VALUES
('1','P101','Umum populer non fiksi dan fiksi','Hasanudin','bukunesia',2011,10),
('2','P102','Kesejahteraan Sosial','Isbandi Rukminto Persada','Rajagrafindo Persada',2015,10),
('3','P103','Dasar Dasar Uroginekologi','Pribakti B','Sagung Seto',2011,10),
('4','P104','Cedera Kepala','M. Z. Arifin','Sagung Seto',2013,10),
('5','P105','Akuntansi Pengantar 1','Supardi','Gava Media',2009,5),
('6','P106','Kolaborasi PHP 5 dan Mysql','Eko Priyo','bukunesia',2011,10),
('7','P107','Kontroversi Hakim Perempuan Pada Peradilan Islam','Djamizah Muqoddas','LKiS',2011,4);
SELECT * FROM Buku;

CREATE TABLE Peminjaman(
    id_peminjaman char(8) primary key,
    tanggal_pinjam date,
    tanggal_kembali date,
    id_buku char,
    CONSTRAINT FK_id_buku FOREIGN KEY (id_buku) REFERENCES Buku(id_buku),
    CONSTRAINT FK_id_anggota FOREIGN KEY (id_anggota) REFERENCES Anggota(id_anggota),
    CONSTRAINT FK_id_petugas FOREIGN KEY (id_petugas) REFERENCES pegawai(id_petugas)
);
desc Peminjaman;

INSERT INTO Peminjaman VALUES
('1','2020-08-10','2020-08-14'),
('2','2020-05-05','2020-05-11'),
('3','2020-06-10','2020-06-05'),
('4','2020-07-05','2020-07-08'),
('5','2020-06-15','2020-06-18'),
('6','2020-10-01','2020-10-10'),
('7','2020-09-15','2020-09-23');
SELECT * FROM Peminjaman;

CREATE TABLE 

-- UPDATE pegawai SET nama='Mark Baik' WHERE id_pegawai='1';
-- SELECT*FROM pegawai;

-- INSERT INTO pegawai VALUES 
-- ('2','Kantata Baik','Landasan Pacu 3', 0),
-- ('3','Dhimas Baik','Terminal Bratang', 1000),
-- ('4','Wawan Baik','Stasiun Gubeng', 2000); 
-- SELECT*FROM pegawai; 

-- DELETE FROM pegawai WHERE id_pegawai='2';
-- SELECT*FROM pegawai;  

-- ALTER TABLE pegawai DROP COLUMN gaji;
-- SELECT*FROM pegawai;  
