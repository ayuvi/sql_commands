/* 
1. MySQL force index (memaksa query index yang tidak terbaca)
2. cara menggunakan force index 
*/

show index from barang;

create index nama_barang_barang_idx on barang(nama_barang);
create index harga_barang_idx on barang(harga);

explain select nama_barang,harga from barang
force index (harga_barang_idx)
where harga between 1000000 and 4800000 order by harga;