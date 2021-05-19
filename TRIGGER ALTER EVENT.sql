/*
1. show create EVENT
2. alter EVENT SCHEDULER
3. alter enable disable event
4. alter event schedule
5. alter event body
6. rename event
*/

-- tampilkan list event
show events from test;

-- tampilkan detail event
show create event event_name_contoh_2;


--  rubah event
 alter EVENT `event_name_contoh_2` on
SCHEDULE at current_timestamp on
COMPLETION preserve ENABLE DO
insert
	into
	job set
	pesan = 'ini adalah job 2000',
	waktu = now();

select * from JOB;
					
			