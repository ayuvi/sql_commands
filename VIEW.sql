-- PENGERTIAN VIEW & CONTOH
view = table virtual (bukan table sebenarnya) yang di buat dari beberapa table atau view lain

CREATE VIEW view_name AS
SELECT * FROM my_table;

MANFAAT VIEW :
1. menyederhanakan query yang complex
2. membuat logika bisnis menjadi konsisten
3. menambahkan level pengamanan
4. menambah kompatibilitas


show tables;

desc barang;
desc penjualan;

create view trans_penjualan as 
select b.id,b.nama_barang,b.harga,p.jumlah,p.tanggal
from barang b inner join penjualan p
on b.id = p.barang_id ;

select * from trans_penjualan tp ;
