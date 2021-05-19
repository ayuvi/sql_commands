/*
1. Pengertian having
HAVING digunakan untuk menentukan kondisi bagi GROUP BY. kelompok yang memenuhi HAVING saja yang akan di hasilkan
2. constoh dasar penggunaan having 
*/

select
	list_data
from
	nama_table
where
	kondisi / syarat
group by
	colom,
	...
having
	kondisi
order by
	kolom
limit 
------------------------------------------
-- db dms2
-- contoh 1
-- ambil data jumlah dari provinsi berseta nama nya dari table sim city 
-- dan simprovinces berdasarkan province id nya yang jumlah nya kurang dari 6

select * from simcity;
select * from simprovinces;

select
	s2.province_id,
	s2.province_name as nama_provinsi,
	city_id
from
	simcity s
inner join simprovinces s2
		using(province_id)
group by
	province_id
-- having
-- 	city_id < 6;
	
------------------------------------------

contoh 2
-- db classicmodels
-- hitung jumlah pemasukan perbulan pada tahun 2003 yang nilai nya kurang dari < 1500000
show tables;
desc payments;

select
	month(paymentDate) as bulan,
	sum(amount) as total
from
	payments
where
	year(paymentDate) = 2003
group by
	month(paymentDate)
having
	total < 1500000;

		
	

