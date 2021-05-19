-- STORE FUNCTION 
-- CREATE FUNCTION EXAMPLE

-- LETS TAKE THE EXAMPLE OF CREATING A STORE FUNCTION, we will use the customers table
-- in the sample database for the demonstration

-- the following create function statement creates a function that returns
-- the customer level based on credit

create function CustomerLevel(
	credit decimal(10,2)
)
returns varchar(20)
deterministic 
begin 
	declare customerLevel varchar(20);

	if credit > 50000 then
			set customerLevel = 'platinum';
	elseif (credit >= 50000 and
				credit <= 10000) then
			set customerlevel = 'gold';
	elseif credit < 10000 then 
			set customerLevel = 'silver';
	end if;
	-- return the customer level
	return (customerLevel);
end;


-- show function status
show function status 
where db = 'classicmodels';

-- calling stored function in sql statement
select customername,customerlevel(creditlimit)
from customers
order by customerName;


-- calling stored function in a stored procedure
 create procedure getCustomerLevel
 (in customerNo INT, out customerLevel varchar(20)
 )
 begin
	 
 end
 
 
