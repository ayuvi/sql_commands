/*
-- STORE PROCEDURE --
1. Cara membuat store procedure
2. keuntungan store procedure
3. kekurangan store procedure
*/

-- cth 1 membuat sp
create procedure contoh()
begin
	select * from barang;
end 

call contoh();

-- keuntungan sp
1. mengurangi lalulintas jaringan
2. terpusatnya logika bisnis di database
3. membuat database lebih aman
4. proses menjadi leih cepat 

-- kerugian
1. penggunaan sumber daya server yang berlebih
2. debugging
3. perawatan