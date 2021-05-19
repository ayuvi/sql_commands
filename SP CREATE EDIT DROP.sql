/*
1. MEMBUAT procedure
2. EDIT procedure
3. HAPUS procedure
*/
-- melihat script store procedure 
show create procedure latihan1;

-- memanggil SP
call latihan2()

-- membuat store procedure dengan script
create procedure latihan2()
begin 
	select * from simcity limit 3;
end

-- membuat store procedure dengan sql client tool dbeaver
1. click kanan pada folder procedure 
2. create new procedure 
3. save

-- jika ingin edit drop terlebih dahulu lalu create kembali
drop procedure if exists latihan1;

create procedure latihan1()
begin 
	select * from simcity limit 3;
end


