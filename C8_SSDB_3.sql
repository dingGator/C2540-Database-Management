use schoolschedulingexample;
select  
		stf.StaffID,
        stf.stfFirstName,
        stf.stfLastName,
        subs.subjectid,
 		subs.subjectname
from 	(staff stf 
	join faculty_subjects subf 
	on(stf.StaffID = subf.StaffID) 
    join subjects subs 
    on(subs.SubjectID = subf.SubjectID));


; 
/*
CREATE 
ALGORITHM=UNDEFINED 
DEFINER=`root`@`localhost` 
SQL SECURITY DEFINER 
VIEW `ch08_staff_subjects` AS 
select concat(`staff`.`StfLastname`,', ',`staff`.`StfFirstName`) 
	AS `StfFullName`,
    `subjects`.`SubjectName` AS `SubjectName` 
from ((`staff` 
	join `faculty_subjects` 
	on((`staff`.`StaffID` = `faculty_subjects`.`StaffID`))) 
    join `subjects` on((`subjects`.`SubjectID` = `faculty_subjects`.`SubjectID`)));

*/