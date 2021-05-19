1. intersect pada mysql
2. contoh alternatif 1
3. contoh alternatif 2

select * from table1
select * from table2


select distinct * from table1 inner join table2 using(id);
select distinct id from table 1 where id in (select id from table2);



operasi minus (mengambil data full di table sebelah kiri)
select t.id, t2.id from table1 t left join table2 t2 using(id);