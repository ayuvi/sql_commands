1. perintah dasar update join
2. update inner join
3. update IMPLISIT join
4. update left/right join

update table1 as a [inner join,left join,right join] 
table2 as b [on a.id = b.id,using(id)]
set colum = value
where
kondisi

alter table barang add column jumlah varchar(50);
insert into barang(jumlah) values (1) where id =1;
delete from barang where id = 4;
select * from barang;
select * from penjualan;
update barang set jumlah='5' where id = '1'; 


-- inner join
update barang as a inner join penjualan as b on(a.id = b.barang_id)
set a.jumlah = a.jumlah-1, b.jumlah = b.jumlah+1
where b.barang_id = 2;

select * from barang as a inner join penjualan as b on(a.id = b.barang_id);

-- implisit join
update barang as a ,penjualan as b
set a.jumlah = a.jumlah-1, b.jumlah = b.jumlah+1
where a.id = b.barang_id 
and b.barang_id =2;

-- left join
update barang as a left join penjualan b on(a.id = b.barang_id)
set a.jumlah = a.jumlah +2
where b.barang_id is null;

select * from barang as a left join penjualan as b on(a.id = b.barang_id)
where b.barang_id is null;

-- right join 
update barang as a right join penjualan b(a.id = b.barang_id)
set a.
