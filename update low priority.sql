1. perintah dasar update 
2. update multiple
3. update low_priority
4. update ignore

create table token (
	id int auto_increment primary key not null,
	serial varchar(5)
);

alter table token add column note varchar(50); 

insert into token (serial) values ('12345');

-- update multip;e
update token set serial='123',note='test' where id = '1'; 


-- update low_priority
update low_priority token set serial='123',note='test' where id = '1'; 

-- update ignore
update ignore token set serial='1234646',note='test' where id = '1'; 