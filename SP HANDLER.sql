-- create new table supplier products for the demonstration

create table SupplierProduct (
	supplierId INT,
	productId INT,
	primary key (supplierId, productId)
);


-- second create store procedure that inserts product id and supplier id into the supplierProduct table
drop procedure InsertSupplierProduct;

create procedure InsertSupplierProduct(
	in inSupplierId INT,
	in inProductId INT
)
begin
	-- exit if the duplicate key occurs
	declare exit handler for 1062
	begin 
		select concat('Duplicate key (',inSupplierId,',',inProductId,') occurred') AS message;
	end;

	-- insert a new row into the suppliers product
	insert into supplierProduct(supplierId,productId)
	values(inSupplierId,inProductId);

	-- return the product supplied by the supplier id
	select count(*)
	from supplierProduct
	where supplierId = inSupplierId;
end;

call InsertSupplierProduct(1,3); 
select * from supplierProduct;
