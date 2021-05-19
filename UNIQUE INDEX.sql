1. konsep dasar unique index
2. membuat unique index bersama create table
3. membuat unique index dengan alter table
4. membuat unique index dengan create unique index
5. unique index di mysql bisa menyimpan null leih dari 1

---------------------------------------------------------

-- cara dengan create
create table barang (
	barang_id int primary key auto_increment,
	barcode varchar(50) unique,
	nama varchar(100),
	unique index barcode_barang_idx (barcode)
);


-- cara dengan alter
alter table barang change barcode barcode varchar(100) unique;

-- drop index
drop index barcode on barang

-- membuat unique index dgn create unique index 
create unique index barcode_barang_idx on barang (barcode);

show index from barang;

insert into barang(barcode,nama) values('12345','sepatu'),('12346','BAJU')