1. analisa join table1 
2. show index
3. drop index
4. menganalisa query dgn explain, explain format tree, explain format json

-- MENAMPILKAN INDEX
show index from simcity;

desc simcity;

-- MEMBUAT INDEX
create index city_name_simcity_idx on simcity(city_name);

-- MENGHAPUS INDEX
drop index city_name_simcity_idx on simcity;

------------------------------------
-- MENGANALISA QUERY

explain FORMAT=json
select
	*
from
	simcity c
inner join simprovinces s on
	s.province_id = c.province_id
where
	s.province_name = 'ACEH';

-- buat index query di atas dan bandingkan query cost nya 
create index province_name_simprovince_idx on simprovinces(province_name);
