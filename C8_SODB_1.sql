/*
*/
use salesordersexample;

select cust.CustFirstName || ' ' || cust.CustLastName as CustomerFullName,
		ord.OrderDate
from (customers cust join orders ord
on(cust.CustomerID = ord.CustomerID))
order by OrderDate
; 
/*
CREATE 
	ALGORITHM=UNDEFINED 
	DEFINER=`root`@`localhost` 
	SQL SECURITY DEFINER 
VIEW `ch08_customers_and_orderdates` AS 
	
    select concat(`customers`.`CustFirstName`,
					' ',`customers`.`CustLastName`) AS `CustomerFullName`,
		`orders`.`OrderDate` AS `OrderDate` 
	from (`customers` join `orders`
		on((`customers`.`CustomerID` = `orders`.`CustomerID`))) 

	order by `orders`.`OrderDate`
;

*/