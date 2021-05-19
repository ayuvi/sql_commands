1. perintah dasar replace
2. contoh replace into
3. contoh replace into update
4. replace into select


replace into [nama_table] (list_colom) values (list_value)

create table city (
	id int not null primary key auto_increment,
	nama_kota varchar(100),
	populasi int
);

alter table city modify column populasi int default 0;

insert into city (nama_kota,populasi) 
values('jakarta utara','300000'),('jakarta pusat','40000'),('jakarta pusat','3555000');

select * from city;

-- replace into
replace into city(id,nama_kota) values(3,'jakarta barat');

-- replace into update
replace into city 
set id =3, nama_kota = 'jakpus', populasi = 25000;

-- replace into city 
replace into city(id,nama_kota,populasi) select id,nama_kota,populasi from city2 where id=2


