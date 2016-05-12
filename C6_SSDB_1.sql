use schoolschedulingexample ;

select concat(stflastname,', ', stffirstname) as name1,
        stfstreetaddress
from staff

where (stfstreetaddress like '%box%' )
;
/*
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `schoolschedulingexample`.`ch06_staff_using_poboxes` AS
    
SELECT 
        `schoolschedulingexample`.`staff`.`StfFirstName` AS `StfFirstName`,
        `schoolschedulingexample`.`staff`.`StfLastname` AS `StfLastname`,
        `schoolschedulingexample`.`staff`.`StfStreetAddress` AS `StfStreetAddress`
    FROM
        `schoolschedulingexample`.`staff`
    WHERE
        (`schoolschedulingexample`.`staff`.`StfStreetAddress` LIKE '%Box%')
    ORDER BY `schoolschedulingexample`.`staff`.`StfFirstName` , `schoolschedulingexample`.`staff`.`StfLastname`;


*/