use entertainmentagencyexample;

select customerid,
		CustlastName,
		'customer' as rowid
from
customers

union
select entertainerid,
		entstagename,
		'entertainer' as rowid
from
entertainers
;

/*
CREATE 
ALGORITHM=UNDEFINED 
DEFINER=`root`@`localhost` 
SQL SECURITY DEFINER 
VIEW `entertainmentagencyexample`.`ch10_customers_union_entertainers` AS 

select 
concat(`entertainmentagencyexample`.`customers`.`CustLastName`,', ',
	`entertainmentagencyexample`.`customers`.`CustFirstName`) 
    AS `Name`,
'Customer' 
	AS `Type` 
from `entertainmentagencyexample`.`customers` 

union 

select 
`entertainmentagencyexample`.`entertainers`.`EntStageName` 
	AS `Name`,
'Entertainer' 
	AS `Type` 
from `entertainmentagencyexample`.`entertainers`;


*/