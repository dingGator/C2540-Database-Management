use schoolschedulingexample;

select *
from 
subjects sub
left join
faculty_subjects fsub
on (fsub.SubjectID = sub.SubjectID)
where isnull(fsub.staffid)
;
/*
select * from ch09_subjects_no_faculty;
/*

CREATE 
ALGORITHM=UNDEFINED 
DEFINER=`root`@`localhost` 
SQL SECURITY DEFINER 
VIEW `ch09_subjects_no_faculty` AS

 select 
 `subjects`.`SubjectID` 
	AS `SubjectID`,
 `subjects`.`SubjectCode` 
	AS `SubjectCode`,
`subjects`.`SubjectName` 
	AS `SubjectName` 
from (`subjects` 
left join `faculty_subjects` 
	on((`subjects`.`SubjectID` 
		= `faculty_subjects`.`SubjectID`))) 
        where isnull(`faculty_subjects`.`StaffID`);

*/