/*
1. MySQL TRIGGER
*/

-- APA ITU TRIGGER
/*Trigger adalah sebuah script perintah MySql yang memicu suatu kejadian dalam database MySql berupa aksi
  insert, update, dan delete setelah syarat tertentu (after or before) */
  

-- PERINTAH DASAR TRIGGER

create trigger nama_trigger
	after insert
	on nama_table
	for each row 
begin 
	-- todo: implement
end

-- CARA MENAMPLIKAN TRIGER
show triggers
from latihan;

