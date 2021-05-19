1. dasar subquery
2. subquery dengan operator komparasi
3. contoh pengunaan subquery update,delete,select
4. subquery dengan in dan not in 
5. subquery terikat
6. subquery didalam field

7. subquery di dalam from 
8. sub query exists dan not exists

------------------------------------
-- db dms 2

select
	distinct s.spk_code,
	cars_id,
	(
	select
		color
	from
		simcars s2
	where
		car_id = s.cars_id)
from
	simspk s
where
	cars_id in(
	select
		car_id
	from
		simcars
	where
		car_id = s.cars_id);


select
	s.spk_code,
	s3.cars_id,
	s2.color
from
	simspk s
inner join simcars s2 on
	s.car_id = s2.cars_id
inner join simcars s3 on
	s3.cars_id = s2.cars_id;
	
-- ----------------------------------
db classic models

-- siapa karyawan yang melapor ke murphy diane
show tables;
desc employees;

select * from employees;

select
	concat(firstname, ' ', lastname) as nama
from
	employees
where
	reportsTo in (
	select
		employeeNumber
	from
		employees
	where
		firstName = 'Diane');
	
-- ----------------------------------
-- tampilkan nama product classic cars yang harga belinya di atas rata rata
show tables;

select * from products;

select
	productName,
	buyprice
from
	products
where
	buyprice > (
	select
		avg(buyPrice)
	from
		products);



