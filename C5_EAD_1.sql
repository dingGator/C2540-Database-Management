use entertainmentagencyexample;

select 	Custcity, 
		concat (CustLastName, ', ' ,CustFirstName) as Customer
from customers
order by custcity,
CONCAT(CustLastName,', ',CustFirstName);
/*
;
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `entertainmentagencyexample`.`ch05_customers_by_city` AS

    SELECT 
        `entertainmentagencyexample`.`customers`.`CustCity` AS `City`,
        CONCAT(`entertainmentagencyexample`.`customers`.`CustLastName`,
                ', ',
                `entertainmentagencyexample`.`customers`.`CustFirstName`) AS `Customer`
    FROM
        `entertainmentagencyexample`.`customers`
    ORDER BY `entertainmentagencyexample`.`customers`.`CustCity` , 
				CONCAT(`entertainmentagencyexample`.`customers`.`CustLastName`,
            ', ',
            `entertainmentagencyexample`.`customers`.`CustFirstName`);
*/