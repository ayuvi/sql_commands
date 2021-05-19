/*
1. MYSQL EVENT SCHEDULER
2. check EVENT SCHEDULER
3. CONTOH SEDERHANA
4. CONTOH TERSIMPAN MENJADI LIST
5. CONTOH DENGAN interval
*/

-- check event scheduler
show PROCESSLIST;
set global event_scheduler = on/off;

create table job(
	id int primary key auto_increment,
	pesan varchar(100),
	waktu datetime
);

-- create event

create event if not exists event_name_contoh_3 on schedule
	every 1 minute
	starts current_timestamp
	ends current_timestamp + interval 1 hour
	do
insert into job set pesan='ini adalah job 3',
					waktu=now();
					
select * from job;
show events from test;

cara membersihkan temporary & cache
membuat cronjob