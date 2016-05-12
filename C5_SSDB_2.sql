use schoolschedulingexample ;

select 
	stfLastname|| ', ' || stffirstname as StaffMember, 
    concat(StflastName , ', ', stffirstname) as name1,
	'('||stfareacode || ') ' || stfphonenumber as phonenumber,
    concat('(',stfareacode, ') ', stfphonenumber) as phonenumber1
from staff
order by concat(StflastName , ' ', stffirstname)
	
;
/*
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `schoolschedulingexample`.`ch05_staff_member_phone_list` AS

    SELECT 
        CONCAT(`schoolschedulingexample`.`staff`.`StfLastname`,
                ', ',
                `schoolschedulingexample`.`staff`.`StfFirstName`) AS `StaffMember`,
        CONCAT('(',
                `schoolschedulingexample`.`staff`.`StfAreaCode`,
                ') ',
                `schoolschedulingexample`.`staff`.`StfPhoneNumber`) AS `Phone`
    FROM
        `schoolschedulingexample`.`staff`
    ORDER BY CONCAT(`schoolschedulingexample`.`staff`.`StfLastname`,
            ', ',
            `schoolschedulingexample`.`staff`.`StfFirstName`);
*/