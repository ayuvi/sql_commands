/*
1. MySQL SHOW trigger
2. MODIFIKASI trigger
3. drop trigger
*/

-- SHOW TRIGGER

show triggers
in test like 'employee';

show triggers like 'employee';

show triggers
from test where `Table` = 'employee';

show triggers
from test where `Event` = 'update';

-- MODIFIKASI TRIGGER
-- pada mysql harus melakukan drop trigger dahulu baru di create ulang
-- menggunakan lock untuk mengamankan data yang sudah di write 

lock tables employee write;
drop trigger update_employee_log;
create trigger trigger_name_new
	before update
	on employee
	for each row
begin
	-- todo: implement
	insert into employee_log 
	set employee_id =old.employee_id,
		old_nama_depan =old.nama_depan,
		new_nama_depan =new.nama_depan,
		change_date =now();
end;
unlock table

