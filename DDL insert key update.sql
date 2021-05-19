1. perintah dasar on duplicate key update 
2. contoh pengunaan
3. contoh dengan multi column dan case


insert into table_name (col1,col2,...) values (val1,val2,...)
on duplicate key update column1 = value;

create table mahasiswa (
	id int primary key auto_increment not null,
	nama varchar(100),
	alamat varchar(100),
	tlp varchar(100)
	);
	
insert into mahasiswa (id,nama,alamat,tlp) value (1,'yuvi','kp mangga','1234'),(1,'dila','sukapura','1234')
on duplicate key update 
tlp = 
	case
		when id=1 then '12345'
		when id=2 then '54321'
	end
,alamat=concat(alamat,' 1');