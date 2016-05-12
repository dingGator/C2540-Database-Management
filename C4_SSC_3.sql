use schoolschedulingexample;

select StfLastname, 
	StfFirstName, 
	StfPhoneNumber
from staff
order by 	StfLastname asc, 
			StfFirstName asc
;
/*

CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `schoolschedulingexample`.`ch04_staff_phone_list` AS

    SELECT 
        `schoolschedulingexample`.`staff`.`StfLastname` AS `StfLastname`,
        `schoolschedulingexample`.`staff`.`StfFirstName` AS `StfFirstName`,
        `schoolschedulingexample`.`staff`.`StfPhoneNumber` AS `StfPhoneNumber`
    FROM
        `schoolschedulingexample`.`staff`
    ORDER BY `schoolschedulingexample`.`staff`.`StfLastname` ,
    `schoolschedulingexample`.`staff`.`StfFirstName`;
*/


