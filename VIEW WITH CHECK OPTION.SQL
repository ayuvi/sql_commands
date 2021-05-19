/*
MySQL view with check option;
*/

show create view trans_fromview ;

create algorithm = UNDEFINED definer = `root` @`localhost` sql security definer view `trans_fromview` as
select
	`trans_penjualan`.`nama_barang` as `nama_barang`,
	`trans_penjualan`.`jumlah` as `jumlah`
from
	`trans_penjualan`
where
	(`trans_penjualan`.`harga` > 30000)
with check option;