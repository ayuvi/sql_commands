1. mysql insert ignore into (perintah dasar)
2. insert ignore into (untuk kolom unique)
3. insert ignore into (untuk strict table)

insert ignore into table_name (coulmn_list) values (value_list);

create table subscriber (
	id int not null primary key auto_increment,
	email varchar(100) not null unique
	);
	
select * from subscriber;

// akan tetap insert tapi data tidak masuk double
insert ignore into subscriber (email) values('asep@gmail.com','yuvi@gmail.com');

create table token(e varchar(5));

select * from token;

// akan masuk sesuai dengan length table
insert ignore into token values('abcdefgh')