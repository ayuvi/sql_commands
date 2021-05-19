/*
	1. if then
	2. if then else
	3. if then else if else 
*/

create table customer (
	customer_id int primary key not null auto_increment,
	customer_name varchar(200),
	address varchar(200),
	limit_amount decimal(12,0)
);

insert into customer (customer_name,address,limit_amount) values
('joko','jakarta barat','100000'),('bejo','jakarta utara','150000'),('kodir','jakarta selatan','200000'),
('tatang','jakarta timur','250000'),('asep','jakarta pusat','300000');

select * from customer;

drop procedure if exists customer_level;

create procedure customer_level(
	in cus_name varchar(100),
	out level_cat varchar(100)
)
begin
	declare amount_val decimal(12,0) default 0;
	select limit_amount into amount_val from customer where customer_name like concat('%',cus_name,'%') ;
	if amount_val > 200000 and amount_val < 250000 then 
		set level_cat = 'GOLD';
	elseif amount_val > 250000 then 
		set level_cat = 'PLATINUM';
	else
		set level_cat = 'SILVER';
	end if;
end

call customer_level('asep',@level);
select @level;
