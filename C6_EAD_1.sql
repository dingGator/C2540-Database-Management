use entertainmentagencyexample;

select 	engagementNumber,
	contractprice,
		startdate,
        enddate
		
from engagements
where ((enddate >= cast('2012-10-01' as date)) and (startdate <= cast('2012-10-31' as date)))
order by startdate;

;
/*
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `entertainmentagencyexample`.`ch06_october_2012_engagements` AS

   SELECT 
        `entertainmentagencyexample`.`engagements`.`EngagementNumber` AS `EngagementNumber`,
        `entertainmentagencyexample`.`engagements`.`ContractPrice` AS `ContractPrice`,
        `entertainmentagencyexample`.`engagements`.`StartDate` AS `StartDate`,
        `entertainmentagencyexample`.`engagements`.`EndDate` AS `EndDate`
    FROM
        `entertainmentagencyexample`.`engagements`
    WHERE
        ((`entertainmentagencyexample`.`engagements`.`StartDate` <= CAST('2012-10-31' AS DATE))
            AND (`entertainmentagencyexample`.`engagements`.`EndDate` >= CAST('2012-10-01' AS DATE)));
*/