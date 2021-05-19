-- INNER JOIN --
/*
 * inner join adalah hanya menampilkan data yang beririsan dengan table lain nya 
 * */

-- buat table barang 
create table barang(
id int primary key auto_increment,
nama_barang varchar(100),
harga decimal(13,2)
);
 
-- buat table gudang
create table gudang(
id int primary key auto_increment,
nama_gudang varchar(50)
);

-- buat table penjualan
create table penjualan(
barang_id int,
gudang_id int,
jumlah decimal(13,2) not null,
tanggal date not null,
primary key (barang_id,gudang_id)
);

-- insert data ke table
insert into barang(nama_barang,harga)values('sepatu','5000000'),('baju','2000000'),('celana','1000000');
insert into gudang(nama_gudang)values('jakarta'),('bogor'),('semarang');
insert into penjualan(barang_id,gudang_id,jumlah,tanggal)
values(1,1,50,'2020-10-01'),(2,3,100,'2020-11-01'),(1,3,150,'2020-12-01');

select * from penjualan;


-- select 3 table dengan inner join
-- db test

 select
	b.nama_barang,
	g.nama_gudang,
	p.tanggal,
	sum(jumlah*harga) as total_harga
from
	penjualan p
inner join barang b on
	b.id = p.barang_id
inner join gudang g on
	g.id = p.gudang_id
group by
	nama_gudang,
	nama_barang;


-- contoh lain nya
-- db classic models
-- join table employee dengan office untuk mencari letak daerah si employees : 

select
	firstname,
	lastName,
	city
from
	employees
inner join offices
		using (officeCode)


