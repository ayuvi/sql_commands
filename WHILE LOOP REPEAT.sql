/*
	1. perintah dasar repeat loop
	2. contoh penggunaan
*/
drop procedure repeatdemo;

create procedure repeatdemo()
begin
	declare counter int default 1;
	declare result varchar(100) default '';
	repeat
		set result=concat(result,counter,',');
		set counter = counter + 1;
	until counter >=10
	end repeat;
	select result;
end

call repeatdemo;
