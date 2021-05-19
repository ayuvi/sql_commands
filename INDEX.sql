1. cara membuat index

-- melihat semua table
show full TABLES;

show create table barang ;

-- membuat index bersama saat membuat table
CREATE TABLE `mahasiswa` (
  `mhs_id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_depan` varchar(100) DEFAULT NULL,
  `nama_belakang` varchar(100) DEFAULT NULL,
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  PRIMARY KEY (`mhs_id`),
  index(nama_depan)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- membuat index sendiri
create index nama_belakang_idx on mahasiswa(nama_belakang);
create index tempat_lahir_idx on mahasiswa(tempat_lahir);

-- cara melihat index pada table
show index from mahasiswa;

select * from mahasiswa where tempat_lahir = 'jakarta';

insert into mahasiswa (mhs_id,nama_depan,nama_belakang,tempat_lahir,tanggal_lahir) 
value (12,'yuvi','putra','jakarta','1992-08-25'),
(13,'dila','fadillah','bandung','1993-10-28'),
(14,'dila','fadillah','bandung','1993-10-28'),
(15,'dila','fadillah','bandung','1993-10-28');

