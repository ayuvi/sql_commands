-- MYSQL CHECK CONSTRAINT

create table if not exists parts (
part_no varchar(18) primary key,
description varchar(40),
cost decimal(10,2) not null,
price decimal(10,2) not null
);

select * from parts;

-- ------------------------------------------------------
-- create procedure

create procedure check_parts(in cost decimal(10,2), in price decimal(10,2))
begin
	if cost < 0 then
		signal sqlstate '45000'
			set message_text = 'check constraint on parts.cost failed';
	end if;
	
	if price < 0 then
		signal sqlstate '45001'
			set message_text = 'check constraint on parts.cost failed';
	end if;
	
	if price < cost then
		signal sqlstate '45002'
			set message_text = 'check constraint on parts.price & parts.cost failed';
	end if;
end;

call check_parts(2,3);
-- -------------------------------------------------

-- before insert
create trigger parts_before_insert before insert on parts
for each row
begin
	call check_parts(new.cost,new.price);
end

-- before update 
create trigger parts_before_update before update on parts
for each row
begin
	call check_parts(new.cost,new.price);
end

-- -------------------------------

insert into parts(part_no, description,cost,price)
values('a-001','cooler',100,200);

insert into parts(part_no, description,cost,price)
values('a-002','heater',-100,200);

-- --------------------------------

insert into parts(part_no,description,cost,price)
values ('a-003','wiper',120,100);

select * from parts;
