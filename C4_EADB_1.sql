use entertainmentagencyexample;

select 	AgtlastName,  
		AgtfirstName ,
        AgtPhoneNumber 
from agents 
order by agtlastname asc
;
/*
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `entertainmentagencyexample`.`ch04_agent_phone_list` AS

SELECT 
        `entertainmentagencyexample`.`agents`.`AgtLastName` AS `AgtLastName`,
        `entertainmentagencyexample`.`agents`.`AgtFirstName` AS `AgtFirstName`,
        `entertainmentagencyexample`.`agents`.`AgtPhoneNumber` AS `AgtPhoneNumber`
    FROM
        `entertainmentagencyexample`.`agents`
    ORDER BY `entertainmentagencyexample`.`agents`.`AgtLastName` ,
    `entertainmentagencyexample`.`agents`.`AgtFirstName`;
*/