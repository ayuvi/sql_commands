/* MULTIPLE trigger */

-- MEMBUAT TRIGGER YANG SAMA PADA SATU TABLE

show tables;
select * from barang;
select * from barang_log;
select * from user_log;
update barang set harga = 4000000 where id = 3;

 create table barang_log(
 	id int primary key auto_increment,
 	barang_id int,
 	old_harga decimal(12,2),
 	new_harga decimal(12,2),
 	perubahan datetime default current_timestamp on update current_timestamp
 );
 
create table user_log(
	id int primary key auto_increment,
	barang_id int,
	user varchar(100),
	perubahan datetime default current_timestamp on update current_timestamp
);

create trigger trigger_before_update_1
	before update 
	on barang
	for each row
begin 
	if old.harga <> new.harga then
	insert into barang_log set barang_id=old.id,
								old_harga=old.harga,
								new_harga=new.harga;
	end if;
end;
-- --------------------------------

create trigger trigger_before_update_2
	before update 
	on barang
	for each row
begin 
	if old.harga <> new.harga then
	insert into user_log set barang_id=old.id,
								user=user();
	end if;
end;

show tables;