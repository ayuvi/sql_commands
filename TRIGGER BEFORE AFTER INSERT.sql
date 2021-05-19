/*
MYSQL trigger before / after insert 
*/

-- tidak bisa mengambil data old
-- before insert bisa mengubah data yang akan di insert (after insert kebalikan nya)
-- after insert kita tidak bisa ubah data yang akan di generate mysql(auto_increment)


-- contoh before merubah value saat insert data(after tidak bisa merubah value)

create trigger trigger_employee
	before insert 
	on employee
	for each row
begin 
	if new.capacity < 5 then 
		set new.capacity=10;
	end if;
end;

select * from employee;
select * from employee_count;

insert into employee (nama_depan,nama_tengah,nama_belakang,alamat,tlp,capacity) 
values ('test data 2',null,null,'jakarta utara',12345,4);

-- -------------------------------------------
-- contoh after insert
-- buat table employee count
-- after insert dapat mendapatkan nilai yang di insert ke table baru

create table employee_count (
	id int primary key auto_increment,
	jumlah int,
	tanggal datetime
);

create trigger trigger_employee_after_insert
	after insert 
	on employee
	for each row
begin 
	-- todo: implementation 
	declare paramet int default 0;
	select count(*) into paramet from employee_count;
	if paramet > 0 then
		update employee_count set jumlah=jumlah + new.capacity, tanggal=now();
	else	
		insert into employee_count (jumlah,tanggal) values (new.capacity,now());
	end if;
end;

