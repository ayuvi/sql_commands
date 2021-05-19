1. perintah dasar delete 
2. delete dengan limit
3. delete dengan order by limit 

-- 1 . perintah dasar delete
delete from table_name where kondisi
delete from mahasiswa where id=6;

-- 2. delete dengan limit
delete from mahasiswa limit 1

-- 3. delete dengan order by limit 
delete from mahasiswa where id > 3 order by id desc limit 1

-- 4. perintah dasar delete join
delete t1,t2 from t1 inner join t2 on t1.id=t2.id where kondisi

-- 5. delete inner join
select * from t1 inner join t2 on t1.id=t2.ref where t2.ref=1

delete t1,t2 from t1 inner join t2 on t1.id=t2.ref where t2.ref=1

-- 6 .delete left join 
select * from t1 left join t2 on t1.id = t2.ref where t2.ref is null

delete t1 from t1 left join t2 on t1.id = t2.ref where t2.ref is null


