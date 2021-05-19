/*
-- store procedures --
1. delimeter

*/

-- delimeter adalah pembatas seperti titik koma pada code 

delimiter $$
create procedure contoh_sp()

begin
	select * from simcars;
end $$
delimiter ;