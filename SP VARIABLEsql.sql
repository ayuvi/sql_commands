/*
1. variable
2. scope variable
3. contoh penggunaan
*/

-- 1. variable (declare)

CREATE PROCEDURE dms2.latihan1()
begin
	declare jumlahkota,totalkota int default 0;
	declare namakota varchar(100) default '';
	select count(*) as jumlah,sum(city_id) as total,city_name into jumlahkota,totalkota,namakota from simcity;
	select jumlahkota,totalkota,namakota;

end

call latihan1();

-- scope variable
scope variable hanya di dalam begin sampai end dalam create procedure

