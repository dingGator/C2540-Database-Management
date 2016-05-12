use schoolschedulingexample;

select stf.staffid,
stf.StfFirstName,
stf.stflastname
from 
staff stf
left join
(

	select cls.classid,
			fclass.staffid,
            sub.SubjectID
            
	from
	(subjects sub
	join
	(	classes cls
			join 
			faculty_classes fclass
			on((fclass.classid = cls.classid)))
	on((cls.subjectid = sub.subjectid)) ) ) schd
    
on ((stf.staffid = schd.staffid))

;
/*
from 
(`subjects` 
join 
(`classes` 
join 
`faculty_classes` 
	on((`classes`.`ClassID` 
	= `faculty_classes`.`ClassID`))) 
    on((`subjects`.`SubjectID` = `classes`.`SubjectID`)));




/*
CREATE 
ALGORITHM=UNDEFINED 
DEFINER=`root`@`localhost` 
SQL SECURITY DEFINER 
VIEW `ch09_all_faculty_and_any_classes` AS

select 
concat(`staff`.`StfLastname`,', ',`staff`.`StfFirstName`) 
	AS `StaffName`,
`sched`.`SubjectName` 
	AS `SubjectName`,
`sched`.`ClassID` 
	AS `ClassID`,
`sched`.`ClassRoomID` 
	AS `ClassRoomID`,
`sched`.`StartTime` 
	AS `StartTime`,
`sched`.`Duration` 
	AS `Duration` 
from (`staff` 
left join `ch09_all_faculty_classes` `sched` 
on((`staff`.`StaffID` = `sched`.`StaffID`)));

CREATE 
ALGORITHM=UNDEFINED 
DEFINER=`root`@`localhost` 
SQL SECURITY DEFINER 
VIEW `ch09_all_faculty_classes` AS 

select 
`faculty_classes`.`StaffID` 
	AS `StaffID`,
`subjects`.`SubjectName` 
	AS `SubjectName`,
`classes`.`ClassID` 
	AS `ClassID`,
`classes`.`ClassRoomID` 
	AS `ClassRoomID`,
`classes`.`StartTime` 
	AS `StartTime`,
`classes`.`Duration` 
	AS `Duration` 
from 
(`subjects` 
join 
(`classes` 
join 
`faculty_classes` 
	on((`classes`.`ClassID` 
	= `faculty_classes`.`ClassID`))) 
    on((`subjects`.`SubjectID` = `classes`.`SubjectID`)));



*/