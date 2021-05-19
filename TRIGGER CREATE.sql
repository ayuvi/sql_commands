/*
create trigger mysql
*/

-- CONTOH CREATE trigger
-- db test , employee table
 

show full tables;
select * from employee_log;
desc employee;

INSERT INTO employee (nama depan,nama_tengah,nama_belakang,alamat,tlp) VALUES 
('asep','sukanto','jokosusilo','sukapura','00656565');

-- buat table log employee

create table employee_log (
	id int primary key auto_increment,
	employee_id int,
	old_nama_depan varchar(100),
	new_nama_depan varchar(100),
	change_date datetime
);

-- buat trigger setelah insert table employee lalu insert table employee_log 

create trigger update_employee_log
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

update employee set nama_depan = 'joko tingkir' where employee_id  = 16;

