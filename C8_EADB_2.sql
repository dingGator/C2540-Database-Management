use EntertainmentAgencyexample;
select distinct
	eng.customerId,
    (cust.custfirstname||' ' || cust.custlastname) as customer_FullName,
    eng.entertainerId,
    ent.entStageName
    
from ((customers cust 
	join engagements eng  
		on (cust.customerid = eng.customerid))
	join entertainers ent
		on (eng.entertainerid = ent.entertainerid))
        order by customerId
 
; 
/*

CREATE 
	ALGORITHM=UNDEFINED 
    DEFINER=`root`@`localhost` 
    SQL SECURITY DEFINER 
VIEW `entertainmentagencyexample`.`ch08_customers_booked_entertainers` AS 
	
    select distinct concat(`entertainmentagencyexample`.`customers`.`CustFirstName`
		,' ',`entertainmentagencyexample`.`customers`.`CustLastName`) 
			AS `CustFullName`,
        `entertainmentagencyexample`.`entertainers`.`EntStageName` 
            AS `EntStageName` 
	from ((`entertainmentagencyexample`.`customers` 
    join `entertainmentagencyexample`.`engagements` 
		on((`entertainmentagencyexample`.`customers`.`CustomerID` 
			= `entertainmentagencyexample`.`engagements`.`CustomerID`))) 
    join `entertainmentagencyexample`.`entertainers` 
		on((`entertainmentagencyexample`.`entertainers`.`EntertainerID` 
			= `entertainmentagencyexample`.`engagements`.`EntertainerID`)));
	
*/