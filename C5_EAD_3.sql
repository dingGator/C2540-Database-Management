use entertainmentagencyexample;
select concat(AgtLastName || ', '|| AgtFirstName) as Agent,
		DateHired,
        (DateHired + interval 180 day) as 'firstReview'
from agents
order by concat(AgtLastName || ', '|| AgtFirstName) 
		 
;
/*
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `entertainmentagencyexample`.`ch05_first_performance_review` AS

    SELECT 
        CONCAT(`entertainmentagencyexample`.`agents`.`AgtLastName`,
                ', ',
                `entertainmentagencyexample`.`agents`.`AgtFirstName`) AS `Agent`,
        `entertainmentagencyexample`.`agents`.`DateHired` AS `DateHired`,
        (`entertainmentagencyexample`.`agents`.`DateHired` + INTERVAL 180 DAY) AS `FirstReview`
    FROM
        `entertainmentagencyexample`.`agents`
    ORDER BY CONCAT(`entertainmentagencyexample`.`agents`.`AgtLastName`,
            ', ',
            `entertainmentagencyexample`.`agents`.`AgtFirstName`);
*/