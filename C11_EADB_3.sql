use entertainmentagencyexample;
select 	ent.entertainerid
from
entertainers ent
where ent.entertainerid
in(select eng.entertainerid
	from customers cust
	join
	engagements eng 
	on(( eng.customerid =cust.customerid))
where ((cust.custlastname = 'berg' ) or (cust.custlastname ='hallmark')))
;

/*	

CREATE 
ALGORITHM=UNDEFINED 
DEFINER=`root`@`localhost` 
SQL SECURITY DEFINER 
VIEW `entertainmentagencyexample`.`ch11_entertainers_berg_or_hallmark_some` AS 

select 
`entertainmentagencyexample`.`entertainers`.`EntertainerID` 
	AS `EntertainerID`,
`entertainmentagencyexample`.`entertainers`.`EntStageName` 
	AS `EntStageName` 
from `entertainmentagencyexample`.`entertainers` 
where 
`entertainmentagencyexample`.`entertainers`.`EntertainerID` 
	in (
		select 
			`entertainmentagencyexample`.`engagements`.`EntertainerID` 
        from (`entertainmentagencyexample`.`customers` 
        join `entertainmentagencyexample`.`engagements` 
			on((`entertainmentagencyexample`.`customers`.`CustomerID` 
			= `entertainmentagencyexample`.`engagements`.`CustomerID`))) 
		where ((`entertainmentagencyexample`.`customers`.`CustLastName` = 'Berg') 
			or (`entertainmentagencyexample`.`customers`.`CustLastName` = 'Hallmark')));
	
*/

