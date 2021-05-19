/*
	1. case when else
*/

select * form customer;

drop procedure customer_level_case;

create procedure customer_level_case(
	in cus_name varchar(100),
	out level_cat varchar(100)
)
begin
	declare amount_val decimal(12,0) default 0;
	select limit_amount into amount_val from customer where customer_name like concat('%',cus_name,'%');
 	case 
 		when amount_val <= 150000 then
 			set level_cat = 'Silver';
 		when amount_val <= 250000 then 
 			set level_cat = 'Gold';
 		else
 			set level_cat = 'platinum';
 	end case;
end;

select * from customer;

call customer_level_case('asep',@level);
select @level;