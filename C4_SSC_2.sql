use schoolschedulingexample;

select distinct title
from faculty

;

/*
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `schoolschedulingexample`.`ch04_faculty_titles` AS
 
 SELECT DISTINCT
        `schoolschedulingexample`.`faculty`.`Title` AS `Title`
    FROM
        `schoolschedulingexample`.`faculty`;
*/