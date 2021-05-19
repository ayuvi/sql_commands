1. konsep dasar composite index (index dengan mulitiple column (max16))
2. cara membuat composite index 
3. menggunakan query composite index 

---------------------------------------

show full tables;

-- menampilkan query create table 
show create table employee;

-- menampilkan index dari table
show index from employee

select * from employee;

-- cara membuat composite index
create index nama_employee_idx on employee(nama_depan,nama_tengah,nama_belakang);

-- cara menjalankan/mengakses composite index
select * from employee where nama_depan = 'asep' and nama_tengah is null and nama_belakang = 'joko';




