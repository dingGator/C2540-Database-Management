use entertainmentagencyexample;
select 	ent.entertainerid,
			(select count(*)
            from engagements eng
            where (eng.entertainerid = ent.entertainerid))
				as engagement_Count
from
entertainers ent
;
/*
select * from ch11_entertainer_engagement_count;

/*
CREATE 
ALGORITHM=UNDEFINED 
DEFINER=`root`@`localhost` 
SQL SECURITY DEFINER 
VIEW `entertainmentagencyexample`.`ch11_entertainer_engagement_count` AS 

select
 `entertainmentagencyexample`.`entertainers`.`EntStageName` 
	AS `EntStageName`,
(	
select count(0) 
from `entertainmentagencyexample`.`engagements` 
where 
(`entertainmentagencyexample`.`engagements`.`EntertainerID` 
= `entertainmentagencyexample`.`entertainers`.`EntertainerID`)) 
AS `EngageCount` 
from `entertainmentagencyexample`.`entertainers`;

*/