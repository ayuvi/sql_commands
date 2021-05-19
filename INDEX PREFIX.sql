1. KONSEP DASAR PREFIX index
2. CARA MENENTUKAN PREFIX index
3. MEMBUAT PREFIX index

---------------------------------------------------

meminimalisir panjang karakter index

use dms2;

-- mencari banyaknya record
select count(*) from simcity;
hasil = 515

-- melihat panjang karakter dari sebuah field
select max(length(city_name)) from simcity;
hasil = 36

-- cara menentukan prefix(menjumlahlan karakter dari kiri ke kanan samakan dengan hasil record untuk mendapatkan prefix
select count(distinct left(city_name,29)) from simcity;

-- membuat prefix(29) index
create index city_name_simcity_idx on simcity(city_name(29));

show index from simcity;

select * from simcity where city_name = 'kabupaten aceh singkil';

-- hindari pemakaian like %% karna membuat full scan query(lemot)