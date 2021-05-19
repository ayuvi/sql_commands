1. perintah dasar union dan union all
2. contoh sederhana
3. contoh contoh dengan order by

create table table1 (id int);

insert into table1 (id) values (1),(2),(3);
insert into table2 (id) values (1),(2),(3),(4),(5);


select
	*
from
	table1
union all
select
	*
from
	table2;


select
	cars_id,
	sum(total_price) as jumlah
from
	simspk
group by
	cars_id
union
select
	23,
	20000000
order by
	cars_id;
	
