use entertainmentagencyexample;

select 	engagementNumber,
	
		startdate,
        enddate
        
from engagements
where (enddate = startdate )

order by startdate;
/*
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `entertainmentagencyexample`.`ch06_single_day_engagements` AS

   SELECT 
        `entertainmentagencyexample`.`engagements`.`EngagementNumber` AS `EngagementNumber`,
        `entertainmentagencyexample`.`engagements`.`StartDate` AS `StartDate`,
        `entertainmentagencyexample`.`engagements`.`EndDate` AS `EndDate`
    FROM
        `entertainmentagencyexample`.`engagements`
    WHERE
        (`entertainmentagencyexample`.`engagements`.`StartDate` = `entertainmentagencyexample`.`engagements`.`EndDate`);

*/