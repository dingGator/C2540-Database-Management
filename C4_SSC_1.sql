use schoolschedulingexample;

select subjectName
from subjects

;
/*
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `schoolschedulingexample`.`ch04_subject_list` AS
 
SELECT 
        `schoolschedulingexample`.`subjects`.`SubjectName` AS `SubjectName`
    FROM
        `schoolschedulingexample`.`subjects`;
        
        */
