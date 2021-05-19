1. dasar rollup
2. contoh penggunaan rollup 

select 
	list_data
from
	table_name
where
	kondisi / syarat
group by 
	colom,1,2,3 with rollup 
order by 
limit 


select 
	cars_id,sum(total_price) as jumlah 
from 
	simspk s 
group by cars_id with rollup;

----------------------------------------------------------------

select 
	p.license_plat as platnomor, year(s.create_date), 
	sum(s.total_price) as jumlah,avg(s.total_price) as rata_rata,
	min(s.total_price) as minimal
from 
	simspk s inner join simcars p 
on
	(s.cars_id = p.car_id) 
group by 
	platnomor with rollup;

---------------------------------------------------------------
	
show databases;
show tables;

desc simspk;
desc simcars;