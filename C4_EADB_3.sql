use entertainmentagencyexample;

select 	engagementnumber, 
		startdate
from engagements 
order by startdate desc, engagementnumber asc

;
/*
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `entertainmentagencyexample`.`ch04_scheduled_engagements` AS

    SELECT 
        `entertainmentagencyexample`.`engagements`.`StartDate` AS `StartDate`,
        `entertainmentagencyexample`.`engagements`.`EngagementNumber` AS `EngagementNumber`
    FROM
        `entertainmentagencyexample`.`engagements`
    ORDER BY `entertainmentagencyexample`.`engagements`.`StartDate` DESC ,
			`entertainmentagencyexample`.`engagements`.`EngagementNumber`;

*/