use entertainmentagencyexample;
select 	cust.Customerid
from
customers cust
where cust.customerid in
(
	select eng.customerid
	from 
    (((musical_styles   mstyle
	join
    entertainer_styles estyle
       on ((mstyle.styleid = estyle.styleid)))
    join
    entertainers ent
		on(( ent.EntertainerID = estyle.EntertainerID)))
    join
    engagements eng 
	on(( ent.EntertainerID = eng.entertainerid)))
    where (mstyle.stylename = 'Country' || mstyle.stylename ='country rock'))
    ;
        
/*

(((`entertainmentagencyexample`.`musical_styles` 
join `entertainmentagencyexample`.`entertainer_styles` 
on((`entertainmentagencyexample`.`musical_styles`.`StyleID` 
= `entertainmentagencyexample`.`entertainer_styles`.`StyleID`))) 
join `entertainmentagencyexample`.`entertainers` 
on((`entertainmentagencyexample`.`entertainers`.`EntertainerID` 
= `entertainmentagencyexample`.`entertainer_styles`.`EntertainerID`))) 
join `entertainmentagencyexample`.`engagements` 
on((`entertainmentagencyexample`.`entertainers`.`EntertainerID` 
= `entertainmentagencyexample`.`engagements`.`EntertainerID`))) 
where ((`entertainmentagencyexample`.`musical_styles`.`StyleName` 
	= 'Country') 
    or (`entertainmentagencyexample`.`musical_styles`.`StyleName` = 'Country Rock')));

   
;
/*
CREATE 
ALGORITHM=UNDEFINED 
DEFINER=`root`@`localhost` 
SQL SECURITY DEFINER 
VIEW `entertainmentagencyexample`.`ch11_customers_who_like_country` AS 

select
 `entertainmentagencyexample`.`customers`.`CustomerID` 
	AS `CustomerID`,
`entertainmentagencyexample`.`customers`.`CustFirstName` 
	AS `CustFirstName`,
`entertainmentagencyexample`.`customers`.`CustLastName` 
	AS `CustLastName` 
from `entertainmentagencyexample`.`customers` 
where `entertainmentagencyexample`.`customers`.`CustomerID` 
in (
select 
`entertainmentagencyexample`.`engagements`.`CustomerID` 
from 
(((`entertainmentagencyexample`.`musical_styles` 
join `entertainmentagencyexample`.`entertainer_styles` 
on((`entertainmentagencyexample`.`musical_styles`.`StyleID` 
= `entertainmentagencyexample`.`entertainer_styles`.`StyleID`))) 
join `entertainmentagencyexample`.`entertainers` 
on((`entertainmentagencyexample`.`entertainers`.`EntertainerID` 
= `entertainmentagencyexample`.`entertainer_styles`.`EntertainerID`))) 
join `entertainmentagencyexample`.`engagements` 
on((`entertainmentagencyexample`.`entertainers`.`EntertainerID` 
= `entertainmentagencyexample`.`engagements`.`EntertainerID`))) 
where ((`entertainmentagencyexample`.`musical_styles`.`StyleName` 
	= 'Country') 
    or (`entertainmentagencyexample`.`musical_styles`.`StyleName` = 'Country Rock')));

*/

