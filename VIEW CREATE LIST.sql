/*
1. MySQL view Tutorials
*/

-- basic statement 
create [or replace] view [db_name.]view_name [(column_list)]
as 
	select-statement;
	
-- melihat view di dalam tables 
show full tables;

-- create view from view 
select * from trans_penjualan tp ;

create or replace view test.trans_fromview
as 
	select nama_barang,jumlah from trans_penjualan where harga > 30000;
	
select * from trans_fromview;

-- create view with join table1 
create view trans_join 
as
	select b.id,b.nama_barang,b.harga,p.jumlah,p.tanggal 
	from barang b inner join penjualan p on b.id = p.barang_id 
	order by b.harga;

select * from trans_join;

-- create view with sub query
create view trans_subquery
as
	select * from barang where id in (select barang_id from penjualan);

select * from trans_subquery;

-- create view explisit columns
	
