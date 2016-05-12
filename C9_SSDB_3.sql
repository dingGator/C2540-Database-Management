use schoolschedulingexample;
select 
stud.StudentID
from 
(students stud
left join
(	select sched.StudentID
	from 
		student_schedules sched
	where (sched.ClassStatus = 1)) scheduled
 on ((scheduled.studentid = stud.studentid)))
 where isnull(scheduled.StudentID)
;
/*
select * from ch09_students_not_currently_enrolled;

/*
CREATE 
ALGORITHM=UNDEFINED 
DEFINER=`root`@`localhost` 
SQL SECURITY DEFINER 
VIEW `ch09_students_not_currently_enrolled` AS 

select 
`students`.`StudentID` 
	AS `StudentID`,
`students`.`StudFirstName` 
	AS `StudFirstName`,
`students`.`StudLastName` 
	AS `StudLastName` 
from (`students` 
left join `ch09_students_enrolled` `sched` 
on((`students`.`StudentID` = `sched`.`StudentID`))) 
where isnull(`sched`.`StudentID`);



CREATE 
ALGORITHM=UNDEFINED 
DEFINER=`root`@`localhost` 
SQL SECURITY DEFINER 
VIEW `ch09_students_enrolled` AS 

select 
`student_schedules`.`StudentID` 
	AS `StudentID`,
`student_schedules`.`ClassID` 
	AS `ClassID`,
`student_schedules`.`ClassStatus` 
	AS `ClassStatus` 
from `student_schedules` 
where (`student_schedules`.`ClassStatus` = 1);

*/