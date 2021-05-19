1. dasar group by 
-- GROUP BY yang di kenakan dalam SELECT berguna untuk mengelompokan data berdasarkan ekspresi group (sama kaya distinct)
2. contoh penggunaan group by
3. contoh pengunaan aggregate function (SUM, AVG, MAX, MIN, and COUNT)


select
	field1,
	.....
from
	nama_table
where
	kondisi
group by
	field1
having
order by
limit 
------------------------------------------------------------------
-- db classicmodels
-- GROUP BY count
-- hitung banyak karyawan yang berasal dari boston

select count(*) as jumlah,o.city,e.firstName 
from employees e join offices o
using(officeCode)
where city='boston'
group by firstName;

-- hitung banyak karyawan di setiap kota
select * from offices;
select * from employees e ;

select city,count(*) as banyak_karyawan
from offices inner join employees
using(officecode) group by city;