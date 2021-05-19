/*
1. invisible index (disable index)
*/

show full tables;
show index from barang;

-- cara membuat visible / invisible index
alter table barang alter index barcode_barang_idx invisible / visible;