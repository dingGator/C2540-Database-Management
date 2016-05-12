
use entertainmentagencyexample;
select *
from 
customers cust
left join
engagements eng
on (cust.CustomerID =eng.customerid)
where isnull(eng.engagementnumber)
;


/*
CREATE 
ALGORITHM=UNDEFINED 
DEFINER=`root`@`localhost` 
SQL SECURITY DEFINER 
VIEW `entertainmentagencyexample`.`ch09_customers_no_bookings` AS 

select 
`entertainmentagencyexample`.`customers`.`CustomerID` 
	AS `CustomerID`,
`entertainmentagencyexample`.`customers`.`CustFirstName` 
	AS `CustFirstName`,
`entertainmentagencyexample`.`customers`.`CustLastName` 
	AS `CustLastName` 
from (`entertainmentagencyexample`.`customers` 
left join `entertainmentagencyexample`.`engagements` 
	on((`entertainmentagencyexample`.`customers`.`CustomerID` 
		= `entertainmentagencyexample`.`engagements`.`CustomerID`))) 
where isnull(`entertainmentagencyexample`.`engagements`.`EngagementNumber`);


*/