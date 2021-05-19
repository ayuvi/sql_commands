1. perintah dasar derived table
2. contoh sementara
3. contoh dengan case when 


select c.license_plat, jumlah, lvl from 
-- 	( select
-- 		cars_id ,
-- 		sum(total_price ) as jumlah,
-- 		(
-- 		case 
-- 			when sum(total_price) < 1000000 then 'silver',
-- 			when sum(total_price) between 1000000 and 3000000 then 'gold',
-- 			when sum(total_price) > 3000000 then 'platinum'
-- 		end
-- 		) as lvl
--	-- from 
	simspk group by cars_id
	) as table1 inner join simcars c on(c.car_id = table1.cars_id);

desc simspk;
desc simcars;

	