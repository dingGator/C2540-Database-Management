use entertainmentagencyexample;

select 'customer' as rowid,
		mstyle.stylename,
        cpref.customerid
	
from
musical_styles mstyle
join
	(customers cust
		join
	musical_preferences cpref
		on ((cust.Customerid = cpref.customerid)))
on(( cpref.styleid = mstyle.StyleID)) 
where (mstyle.StyleName = 'Contemporary')

union

select 'enterainer' as rowid,
		mstyle2.Stylename,
        ent.EntertainerID
from 
musical_styles mstyle2
join
	(entertainers ent
		join
	entertainer_styles estyle
		on((ent.EntertainerID = estyle.EntertainerID)))
on ((estyle.styleid = mstyle2.styleid))
where (mstyle2.StyleName = 'Contemporary')

;

/*

`entertainmentagencyexample`.`musical_styles` 
		join (`entertainmentagencyexample`.`entertainers` 
		join `entertainmentagencyexample`.`entertainer_styles` 
			on((`entertainmentagencyexample`.`entertainers`.`EntertainerID` 
				= `entertainmentagencyexample`.`entertainer_styles`.`EntertainerID`))) 
		on((`entertainmentagencyexample`.`musical_styles`.`StyleID` 
			= `entertainmentagencyexample`.`entertainer_styles`.`StyleID`))) 

where (`entertainmentagencyexample`.`musical_styles`.`StyleName` 
		= 'Contemporary');







CREATE 
ALGORITHM=UNDEFINED 
DEFINER=`root`@`localhost` 
SQL SECURITY DEFINER 
VIEW `entertainmentagencyexample`.`ch10_customers_entertainers_contemporary` AS 

select 
		concat(`entertainmentagencyexample`.`customers`.`CustFirstName`,' ',
			`entertainmentagencyexample`.`customers`.`CustLastName`) 
				AS `Name`,
		'Customer' 
				AS `Type` 

from (`entertainmentagencyexample`.`musical_styles` 
	join (`entertainmentagencyexample`.`customers` 
    join `entertainmentagencyexample`.`musical_preferences` 
		on((`entertainmentagencyexample`.`customers`.`CustomerID` 
			= `entertainmentagencyexample`.`musical_preferences`.`CustomerID`))) 
    on((`entertainmentagencyexample`.`musical_styles`.`StyleID` 
		= `entertainmentagencyexample`.`musical_preferences`.`StyleID`))) 
        
where (`entertainmentagencyexample`.`musical_styles`.`StyleName` 
		= 'Contemporary') 
        
        
union 

select 
	`entertainmentagencyexample`.`entertainers`.`EntStageName` 
		AS `EntStageName`,
	'Entertainer' 
		AS `Type` 
from (
	`entertainmentagencyexample`.`musical_styles` 
		join (`entertainmentagencyexample`.`entertainers` 
		join `entertainmentagencyexample`.`entertainer_styles` 
			on((`entertainmentagencyexample`.`entertainers`.`EntertainerID` 
				= `entertainmentagencyexample`.`entertainer_styles`.`EntertainerID`))) 
		on((`entertainmentagencyexample`.`musical_styles`.`StyleID` 
			= `entertainmentagencyexample`.`entertainer_styles`.`StyleID`))) 

where (`entertainmentagencyexample`.`musical_styles`.`StyleName` 
		= 'Contemporary');

*/
		
