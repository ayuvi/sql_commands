/* 
 * listing store procedure
 * show create SP
 */
	
-- cara menampilkan listing store procedure di semua database(jika menggunakan cmd)
show procedure status;

-- menampilkan listing hanya di db yang di pilih
show procedure status where Db='classicmodels';
show procedure status like '%latihan1%';

-- show create procedure 
show create procedure latihan1;
