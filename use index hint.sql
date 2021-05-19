1. use index hint
2. penggunaan use index 

show index from employee;

-- membuat index kolom employee
create index nama_depan_employee_idx on employee (nama_depan);
create index nama_tengah_employee_idx on employee (nama_tengah);
create index nama_desc_employee_idx on employee (nama_belakang,nama_tengah,nama_depan);


-- ambil index dari kolom possible keys
explain select * from employee where nama_depan = 'yuvi';

-- tambahkan use index sugestion ke query
explain select * from employee use index(nama_belakang_employee_idx,nama_desc_employee_idx) 
where nama_depan = 'yuvi';
