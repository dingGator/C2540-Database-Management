use schoolschedulingexample;
select stud.studentid

from students stud 
where  stud.studentid in 
(
select sched.studentid
from 
student_schedules sched
join
classes cla
on(( cla.classid = sched.classid))
where TuesdaySchedule = 1 )
    ;
    
    /*

CREATE 
ALGORITHM=UNDEFINED 
DEFINER=`root`@`localhost` 
SQL SECURITY DEFINER 
VIEW `ch11_students_in_class_tuesdays` AS 

select `students`.`StudentID` 
	AS `StudentID`,
`students`.`StudFirstName` 
	AS `StudFirstName`,
`students`.`StudLastName` 
	AS `StudLastName` 
from `students` 
where `students`.`StudentID` 
in (
select `student_schedules`.`StudentID` 
from (`student_schedules` 
join `classes` 
on((`student_schedules`.`ClassID` 
= `classes`.`ClassID`)))
 where (`classes`.`TuesdaySchedule` = 1));

    
    */