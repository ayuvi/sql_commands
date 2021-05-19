/* trigger before after delete */

-- BISA MENGAMBIL DATA OLD
-- TIDAK ADA DATA NEW
-- TIDAK BISA MENGEDIT VALUE


create table salary(
	employee_id int primary key,
	effective_date date,
	amount decimal(12,2)
);

create table salary_history(
	id int primary key auto_increment,
	emp_id int,
	effective_date date,
	amount decimal(12,2),
	deleted_at datetime
);

select * from salary;
select * from salary_history;
delete from salary where employee_id = 12345;

insert into salary values (12348,'2020-01-01','6000000'),
						(12346,'2020-01-02','7000000'),
						(12347,'2020-01-03','8000000');
						
create trigger trigger_before_delete
	before delete
	on salary
	for each row 
begin 
	declare data int default 0;
	select count(*) into data from salary where employee_id = old.employee_id;
	if data > 0 then 
	insert into salary_history
	set emp_id = old.employee_id,
		effective_date=old.effective_date,
		amount=old.amount,
		deleted_ad=now();
	end if;
end;

