use entertainmentagencyexample;

select 	engagementNumber,
	contractprice,
		startdate,
        enddate,
		starttime,
        stoptime
        
from engagements
where ((enddate >= cast('2012-10-01' as date)) and (startdate <= cast('2012-10-31' as date))
and (starttime	between cast('12:00:00' as time) and cast('17:00:00' as time))) 

order by startdate;
/*
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `entertainmentagencyexample`.`ch06_october_dates_between_noon_and_five` AS
    SELECT 
        `entertainmentagencyexample`.`engagements`.`EngagementNumber` AS `EngagementNumber`,
        `entertainmentagencyexample`.`engagements`.`StartDate` AS `StartDate`,
        `entertainmentagencyexample`.`engagements`.`StartTime` AS `StartTime`
    FROM
        `entertainmentagencyexample`.`engagements`
    WHERE
        ((`entertainmentagencyexample`.`engagements`.`StartDate` <= CAST('2012-10-31' AS DATE))
            AND (`entertainmentagencyexample`.`engagements`.`EndDate` >= CAST('2012-10-01' AS DATE))
            AND (`entertainmentagencyexample`.`engagements`.`StartTime` 
            BETWEEN CAST('12:00:00' AS TIME) AND CAST('17:00:00' AS TIME)));

*/