/*
	1. PERINTAH DASAR while loop
	2. CONTOH PENGGUNAAN
*/

create table calendar(
	id int not null primary key auto_increment,
	fulldate date unique,
	day tinyint,
	month tinyint,
	quarter tinyint,
	year int
);

create procedure insertcalendar(dt date)
begin
	insert into calendar (fulldate,day,month,quarter,year)
	values (dt,extract(day from dt),extract(month from dt),extract(quarter from dt),extract(year from dt));
end

call insertcalendar('2021-01-01');
select * from calendar;

-- --------------------------------------
drop procedure loadcalendar;
create procedure loadcalendar(
	in startdate date,
	in day int
)
begin
	declare counter int default 1;
	declare dt date default startdate;
	myloop: while counter <= day do
		call insertcalendar(dt);
		set counter=counter+1;
		set dt=date_add(dt,interval 1 day);
	end while myloop;
end

call loadcalendar('2021-01-02', 30); 
select * from calendar c ;