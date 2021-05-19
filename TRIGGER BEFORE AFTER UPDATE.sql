/*
trigger before after update 
- bisa mengambil old data dan new data
- before update bisa mengubah value data
- after update tidak bisa mengubah value tampi bisa mengambil nilai ke table lain

**/

-- CONTOH BEFORE UPDATE
create trigger trigger_before_update
	before update
	on employee
	for each row 
begin 
	if new.capacity < 5 then 
		set new.capacity = 8;
	end if;
end;

-- CONTOH AFTER UPDATE 
create trigger trigger_after_update
	after update
	on employee
	for each row 
begin 
	insert into employee_log 
	set employee_id =old.employee_id,
		old_nama_depan =old.nama_depan,
		new_nama_depan =new.nama_depan,
		old_capacity =old.capacity,
		new_capacity =new.capacity,
		change_date=now();
end;

select * from employee;
select * from employee_log;

update employee set nama_depan = 'test asep new ok',capacity=3 where employee_id =20;