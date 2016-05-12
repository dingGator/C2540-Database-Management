use schoolschedulingexample ;

select salary,
		concat(stflastname,', ', stffirstname) as name
from staff
order by salary desc, 
concat(stflastname,', ', stffirstname) ;
/*
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `schoolschedulingexample`.`ch05_staff_list_by_salary` AS

    SELECT 
        `schoolschedulingexample`.`staff`.`Salary` AS `Salary`,
        CONCAT(`schoolschedulingexample`.`staff`.`StfLastname`,
                ', ',
                `schoolschedulingexample`.`staff`.`StfFirstName`) AS `StaffMember`
    FROM
        `schoolschedulingexample`.`staff`
    ORDER BY `schoolschedulingexample`.`staff`.`Salary` DESC , 
		CONCAT(`schoolschedulingexample`.`staff`.`StfLastname`,', ',
            `schoolschedulingexample`.`staff`.`StfFirstName`);
*/