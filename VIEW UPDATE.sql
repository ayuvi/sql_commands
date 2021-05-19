/*
mysql view updatetable
*/

-- LIHAT TABLE MANA YANG BISA DI UPDATE
select table_name, is_updatable from information_schema.views where table_schema = 'test';

select * from trans_penjualan tp ;

-- CARA UPDATE
update trans_penjualan set harga = 4500000 where id = 2;