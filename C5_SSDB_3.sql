use schoolschedulingexample ;

select Studcity, 
	studlastname || ', ' || studfirstname as fullname, 
    concat( studlastname, ', ', studfirstname) as name1
from students
order by studcity,
		concat( studlastname, ', ', studfirstname) 
;
/*
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `schoolschedulingexample`.`ch05_students_by_city` AS
   SELECT 
        `schoolschedulingexample`.`students`.`StudCity` AS `StudCity`,
        CONCAT(`schoolschedulingexample`.`students`.`StudLastName`,
                ', ',
                `schoolschedulingexample`.`students`.`StudFirstName`) AS `Student`
    FROM
        `schoolschedulingexample`.`students`
    ORDER BY `schoolschedulingexample`.`students`.`StudCity` , 
    CONCAT(`schoolschedulingexample`.`students`.`StudLastName`,', ',
            `schoolschedulingexample`.`students`.`StudFirstName`);
*/