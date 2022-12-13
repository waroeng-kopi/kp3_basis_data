SHOW DATABASES;   -- showing database in directory


USE kepegawaian;
CREATE TABLE pegawai(
    id_pegawai char(8) primary key,
    nama varchar(50),
    alamat varchar(50),
    gaji int
);

desc pegawai;

INSERT INTO pegawai VALUES('1','Mark Kontol','Jalan Setan 666',500);
SELECT*FROM pegawai;

UPDATE pegawai SET nama='Mark Baik' WHERE id_pegawai='1';
SELECT*FROM pegawai;

INSERT INTO pegawai VALUES 
('2','Kantata Baik','Landasan Pacu 3', 0), 
('3','Dhimas Baik','Terminal Bratang', 1000),
('4','Wawan Baik','Stasiun Gubeng', 2000); 
SELECT*FROM pegawai; 

DELETE FROM pegawai WHERE id_pegawai='2';
SELECT*FROM pegawai;  

ALTER TABLE pegawai DROP COLUMN gaji;
SELECT*FROM pegawai;  
