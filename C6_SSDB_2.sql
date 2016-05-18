use schoolschedulingexample ;

select studlastname|| ", "|| studfirstname as studentName,
        StudAreaCode, StudPhoneNumber, StudState
from students
where studState not in ('WA', 'OR','ID' )
;
/*
    SELECT 
        CONCAT(`schoolschedulingexample`.`students`.`StudLastName`,
                ', ',
                `schoolschedulingexample`.`students`.`StudFirstName`) AS `StudentName`,
        `schoolschedulingexample`.`students`.`StudAreaCode` AS `StudAreaCode`,
        `schoolschedulingexample`.`students`.`StudPhoneNumber` AS `StudPhoneNumber`,
        `schoolschedulingexample`.`students`.`StudState` AS `StudState`
    FROM
        `schoolschedulingexample`.`students`
    WHERE
        (`schoolschedulingexample`.`students`.`StudState` NOT IN ('ID' , 'OR', 'WA'));
*/