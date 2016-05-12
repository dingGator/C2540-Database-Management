use salesordersexample;
select c.*
from 
(	orders o 
		join
    order_details ord
			on (o.ordernumber = ord.ordernumber)
		join
    products pro
			on (ord.productnumber = pro.productnumber and
				pro.productname like '% Helmet%'))
         right outer join 
	customers c 
			on (c.CustomerID = o.CustomerID)
where o.customerid is null       


/*
CREATE 
ALGORITHM=UNDEFINED 
DEFINER=`root`@`localhost` 
SQL SECURITY DEFINER 
VIEW `salesordersexample`.`ch09_customers_no_helmets` AS 

select `salesordersexample`.`customers`.`CustomerID` 
	AS `CustomerID`,
    `salesordersexample`.`customers`.`CustFirstName` 
    AS `CustFirstName`,
    `salesordersexample`.`customers`.`CustLastName` 
    AS `CustLastName` 
from (`salesordersexample`.`customers` 
left join `salesordersexample`.`ch09_customers_helmets` `helmetorders` 
on((`salesordersexample`.`customers`.`CustomerID` 
= `helmetorders`.`CustomerID`))) 
where isnull(`helmetorders`.`CustomerID`);

CREATE 
ALGORITHM=UNDEFINED 
DEFINER=`root`@`localhost` 
SQL SECURITY DEFINER 
VIEW `salesordersexample`.`ch09_customers_helmets` AS 

select `salesordersexample`.`orders`.`CustomerID` 
	AS `CustomerID`,
`salesordersexample`.`products`.`ProductName` 
AS `ProductName` 
from (`salesordersexample`.`products` 
join (`salesordersexample`.`orders` 
join `salesordersexample`.`order_details` 
on((`salesordersexample`.`orders`.`OrderNumber` 
= `salesordersexample`.`order_details`.`OrderNumber`))) 
on((`salesordersexample`.`products`.`ProductNumber` 
= `salesordersexample`.`order_details`.`ProductNumber`))) 
where (`salesordersexample`.`products`.`ProductName` like '%helmet%');


*/