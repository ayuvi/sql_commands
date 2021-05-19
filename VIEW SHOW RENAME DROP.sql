/*
show view
rename view
drop view
*/


-- show view
show full tables where table_type = 'VIEW';
show full tables in test where table_type = 'VIEW';
show full tables from test where table_type = 'VIEW';
select * from information_schema.TABLES where TABLE_SCHEMA = 'test' and TABLE_TYPE = 'VIEW';
select * from information_schema.VIEWS where TABLE_SCHEMA - 'test';
show create view trans_join ;


-- rename view

rename table trans_join to trans_join_view;

-- drop view

drop view if exists trans_join,trans_penjualan;


