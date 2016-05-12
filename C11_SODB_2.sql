use salesordersexample;
select 	cust.Customerid,
		cust.CustFirstName,
        cust.CustLastName
from 
customers cust
where 
	cust.customerid
in (select ord.customerid
	from 
    (((orders  ord
		join
		order_details ordet
			on((ord.ordernumber = ordet.ordernumber)))
		join
        products prod 
			on((prod.Productnumber = ordet.ProductNumber)))
		join
		categories cat 
			on((prod.CategoryID = cat.CategoryID)))
		where (cat.CategoryDescription = 'Bikes'))
        
;
/*
select * from ch11_customers_ordered_bikes_in;

/*

CREATE 
ALGORITHM=UNDEFINED 
DEFINER=`root`@`localhost` 
SQL SECURITY DEFINER 
VIEW `salesordersexample`.`ch11_customers_ordered_bikes_in` AS 

select 
	`salesordersexample`.`customers`.`CustomerID` 
		AS `CustomerID`,
	`salesordersexample`.`customers`.`CustFirstName` 
		AS `CustFirstName`,
	`salesordersexample`.`customers`.`CustLastName` 
		AS `CustLastName` 
	from `salesordersexample`.`customers` 
    where `salesordersexample`.`customers`.`CustomerID` 
    in 
    (	select 
			`salesordersexample`.`orders`.`CustomerID` 
		from 
        (((`salesordersexample`.`orders` 
				join `salesordersexample`.`order_details` 
					on((`salesordersexample`.`orders`.`OrderNumber` 
					= `salesordersexample`.`order_details`.`OrderNumber`))) 
				join `salesordersexample`.`products` 
					on((`salesordersexample`.`products`.`ProductNumber` 
					= `salesordersexample`.`order_details`.`ProductNumber`))) 
				join `salesordersexample`.`categories` 
					on((`salesordersexample`.`categories`.`CategoryID` 
                    = `salesordersexample`.`products`.`CategoryID`))) 
				where (`salesordersexample`.`categories`.`CategoryDescription` 
						= 'Bikes'));
*/
