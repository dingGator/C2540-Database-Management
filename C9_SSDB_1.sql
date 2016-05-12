use schoolschedulingexample;

select *
from 
(	subjects sub
		join
	(classes cla
		left join 
	(select 
		sched.ClassID
	from 
	(	student_class_status claStat 
			join student_schedules sched 
			on((claStat.ClassStatus 
				= sched.ClassStatus)))
	where (claStat.ClassStatusDescription = 'enrolled')) enrol
on ((enrol.classid = cla.classid)))
on ((sub.subjectid = cla.subjectid)))
where isnull(enrol.ClassID);

;
/*
select * from ch09_classes_no_students_enrolled;



CR
EATE 
ALGORITHM=UNDEFINED 
DEFINER=`root`@`localhost` 
SQL SECURITY DEFINER 
VIEW `ch09_classes_no_students_enrolled` AS 

/*
`subjects`.`SubjectName` 
	AS `SubjectName`,
`classes`.`ClassRoomID` 
	AS `ClassRoomID`,
`classes`.`StartTime` 
	AS `StartTime`,
`classes`.`Duration` 
	AS `Duration` 

from (subjects 
	join 
    (classes 
		left join 
        `ch09_classes_students` enrolled 
        on((classes.ClassID 
			= enrolled.ClassID))) 
	on((subjects.SubjectID 
		= `classes`.`SubjectID`))) 
    where isnull(`enrolled`.`ClassID`);



CREATE 
ALGORITHM=UNDEFINED 
DEFINER=`root`@`localhost` 
SQL SECURITY DEFINER 
VIEW `ch09_classes_students` AS

 select 
 `student_schedules`.`ClassID` 
	AS `ClassID` 
from 
(`student_class_status` 
	join `student_schedules` 
    on((`student_class_status`.`ClassStatus` 
    = `student_schedules`.`ClassStatus`))) 
    where (`student_class_status`.`ClassStatusDescription` = 'enrolled');





*/