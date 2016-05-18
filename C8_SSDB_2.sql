use Schoolschedulingexample;
select 	stud.StudentID,
		concat(stud.StudLastName || ", "|| stud.StudFirstName) as studentFullName,
        student_class_status.ClassStatusDescription,
        stud_sched.classID,
        subjects.subjectID,
        subjects.subjectName
	
from 	(student_schedules stud_sched 
	join students stud
    on (stud.studentID = stud_sched.studentID)
    join classes 
    on (stud_sched.classID = classes.classID)
    join subjects
    on (classes.subjectID = subjects.subjectID)
    join student_class_status
    on( student_class_status.classStatus = stud_sched.ClassStatus))
    where student_class_status.classStatusDescription = 'enrolled'
    

; 
/*
CREATE 
ALGORITHM=UNDEFINED 
DEFINER=`root`@`localhost` 
SQL SECURITY DEFINER 
VIEW `schoolschedulingexample`.`ch08_student_enrollments` AS 

select concat(`schoolschedulingexample`.`students`.`StudLastName`,', ',`schoolschedulingexample`.`students`.`StudFirstName`) 
AS `StudentFullName`,
`schoolschedulingexample`.`classes`.`ClassID` AS `ClassID`,
`schoolschedulingexample`.`subjects`.`SubjectName` AS `SubjectName` 
from ((((`schoolschedulingexample`.`students` 
join `schoolschedulingexample`.`student_schedules` 
on((`schoolschedulingexample`.`students`.`StudentID` = `schoolschedulingexample`.`student_schedules`.`StudentID`))) 
join `schoolschedulingexample`.`student_class_status` 
on((`schoolschedulingexample`.`student_schedules`.`ClassStatus` = `schoolschedulingexample`.`student_class_status`.`ClassStatus`))) 
join `schoolschedulingexample`.`classes` 
on((`schoolschedulingexample`.`classes`.`ClassID` = `schoolschedulingexample`.`student_schedules`.`ClassID`))) 
join `schoolschedulingexample`.`subjects` 
on((`schoolschedulingexample`.`subjects`.`SubjectID` = `schoolschedulingexample`.`classes`.`SubjectID`))) 
where (`schoolschedulingexample`.`student_class_status`.`ClassStatusDescription` = 'Enrolled');







CREATE 
	ALGORITHM=UNDEFINED 
    DEFINER=`root`@`localhost` 
    SQL SECURITY DEFINER 
VIEW `schoolschedulingexample`.`ch08_buildings_classrooms` AS 

	select
		`schoolschedulingexample`.`buildings`.`BuildingName` 
			AS `BuildingName`,
		`schoolschedulingexample`.`class_rooms`.`ClassRoomID` 
			AS `ClassRoomID` 
	from (`schoolschedulingexample`.`buildings` 
		join `schoolschedulingexample`.`class_rooms` 
			on((`schoolschedulingexample`.`buildings`.`BuildingCode` 
            = `schoolschedulingexample`.`class_rooms`.`BuildingCode`)));
*/