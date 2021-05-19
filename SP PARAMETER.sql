/*
	1. parameter
	2. in parameter
	3. out parameter
	4. in out parameter
*/

drop procedure if exists latihan3;

-- create sp dengan parameter in, out
create procedure latihan3(
	-- disini tempatnya parameter
	in nama_kota varchar(100),
	out jumlah int
)
begin
	declare namakota varchar(100);
	set namakota = concat('%',nama_kota,'%');
	select count(*) into jumlah from simcity where city_name like namakota;
end

call latihan3('utara',@jumlah);
select @jumlah;