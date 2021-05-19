/* 
MySQL view cascaded & local
alter view
*/

 select * from t1;

create view view1 as
select * from t1 where var > 10;
 
insert into view1 (var) values(5);
----------------------------------------

create view view2 as
select * from view1
with cascaded check option;

insert into view2 (var) values(5);

-----------------------------------------

create view view3 as
select * from view2 where var < 20;

insert into view3 (var) values (9);


-- local check option
alter view
with local check option;

