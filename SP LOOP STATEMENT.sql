/*
	1. perintah dasar loop
	2. loop dengan leave
	3. loop dengan iterate

*/

create procedure loopdemo()
begin
	declare x int;
	declare str varchar(200);
	set x=1;
	set str='';
	myloop: loop
		if x > 10 then
			leave myloop;
		end if;
		set x=x+1;
		if (x mod 2) then
			iterate myloop;
		else
			set str = concat(str,x,',');
		end if;
	end loop myloop;
	select str;
end

call loopdemo();