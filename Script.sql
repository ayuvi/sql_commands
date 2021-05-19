use demo;

show tables;

select * from persons;

delete from persons where id = 7;

update persons set id = 8 where id = 9;


create table employees (
id int not null primary key auto_increment,
name varchar(100) not null,
address varchar(255) not null,
salary int(10) not null
);