use schoolschedulingexample ;
use schoolschedulingexample;
select SubjectName,SubjectDescription,SubjectCode
from Subjects
where SubjectCode like 'MUS%'
;

/*
    SELECT 
        `schoolschedulingexample`.`subjects`.`SubjectName` AS `SubjectName`,
        `schoolschedulingexample`.`subjects`.`SubjectDescription` AS `SubjectDescription`,
        `schoolschedulingexample`.`subjects`.`SubjectCode` AS `SubjectCode`
    FROM
        `schoolschedulingexample`.`subjects`
    WHERE
        (`schoolschedulingexample`.`subjects`.`SubjectCode` LIKE 'MUS%');
*/