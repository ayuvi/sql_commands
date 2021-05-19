1. perintah on delete cascade
2. cara membuat on delete cascade 
3. simulasi

alter table test.penjualan add constraint penjualan_fk foreign key (barang_id)
references test.barang(barang_id) on delete cascade;


select
	table_name
from
	referential_constraints
where
	constraint_schema = 'test'
		and referenced_table_name = 'barang'
		and delete_rule = 'CASCADE'