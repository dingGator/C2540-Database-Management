use schoolschedulingexample;
select sub.subjectid,
		sub.subjectname
from 
subjects sub
where sub.subjectid 
in( select cla.subjectid
		from classes cla
		where WednesdaySchedule = 1 )
        ;
      
      
      /*
select * from ch11_subjects_on_wednesday;      
        /*

CREATE 
ALGORITHM=UNDEFINED 
DEFINER=`root`@`localhost` 
SQL SECURITY DEFINER 
VIEW `ch11_subjects_on_wednesday` AS 

select 
`categories`.`CategoryDescription` 
	AS `CategoryDescription`,
`subjects`.`SubjectID` 
	AS `SubjectID`,
`subjects`.`SubjectCode` 
	AS `SubjectCode`,
`subjects`.`SubjectName` 
	AS `SubjectName` 
from 
(`categories` 
	join `subjects` 
    on((`categories`.`CategoryID` 
    = `subjects`.`CategoryID`))) 
    where `subjects`.`SubjectID` 
    in (
    select
    `classes`.`SubjectID` 
    from `classes` 
    where (`classes`.`WednesdaySchedule` = 1));

        */
