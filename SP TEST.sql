show character set;

show collation like 'latin%';

create table if not exists tasks (
	task_id int auto_increment primary key,
	subject varchar(255) default null,
	start_date date default null,
	end_date date default null,
	description varchar (400) default null
);


select * from tasks;

-- membuat procedure untuk di panggil di php 
select * from customers c ;

create procedure GetCustomers()
begin
		select customerName,creditLimit
		from customers;
end
-- ---------------------------------
-- membuat procedure dengan level
   
   create procedure GetCustomerLevel(
	in p_customerNumber int(11),
	out p_customerLevel varchar(100)
)
begin
	declare creditlim double;
	select creditlimit into creditlim from customers 
	WHERE customerNumber = p_customerNumber;
	if creditlim > 50000 then 
		set p_customerLevel = 'PLATINUM';
	elseif (creditlim <= 50000 AND creditlim >= 10000) then 
		set p_customerLevel = 'GOLD';
	elseif creditlim < 10000 THEN
		set p_customerLevel = 'SILVER';
	end if;
end

show create procedure getCustomerLevel;

call GetCustomerLevel(103,@level); 
select @level as level;
select * from customers;
