/*
1. index cardinality = "menyimpan jumlah unique dari kolom yang di simpa mjd index"
*/

show index from employee;


-- mencari jumlah cardinality
 select
	count(distinct employees_id) as jumlah,
	count(distinct nama_depan) as jumlah2
from
	employee;