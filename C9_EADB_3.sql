use entertainmentagencyexample;

select *
from 
(entertainers ent
left join
engagements eng
	on (ent.entertainerid = eng.EntertainerID))
;


select * from Ch08_Agents_booked_dates;


/*
select *
from 
entertainers
;
/*
CREATE 
ALGORITHM=UNDEFINED 
DEFINER=`root`@`localhost` 
SQL SECURITY DEFINER VIEW `entertainmentagencyexample`.`ch09_all_entertainers_and_any_engagements` AS

 select 
 `entertainmentagencyexample`.`entertainers`.`EntertainerID` 
	AS `EntertainerID`,
`entertainmentagencyexample`.`entertainers`.`EntStageName` 
	AS `EntStageName`,
`entertainmentagencyexample`.`engagements`.`EngagementNumber` 
	AS `EngagementNumber`,
`entertainmentagencyexample`.`engagements`.`StartDate` 
	AS `StartDate`,
`entertainmentagencyexample`.`engagements`.`CustomerID` 
	AS `CustomerID` 
from 
(`entertainmentagencyexample`.`entertainers` 
	left join `entertainmentagencyexample`.`engagements` 
    on((`entertainmentagencyexample`.`entertainers`.`EntertainerID` 
    = `entertainmentagencyexample`.`engagements`.`EntertainerID`)));

*/