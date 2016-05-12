use schoolschedulingexample;
select  studart.StudFullName AS StudFullName 
		
from 	(
select distinct stud.StudentID AS StudentID,
 concat(stud.StudLastName,', ',stud.StudFirstName) 
	AS `StudFullName` 
    from ((((students stud 
    join student_schedules schd 
	on((stud.StudentID = schd.StudentID))) 
    join classes cls 
    on((cls.ClassID = schd.ClassID))) 
    join subjects subj 
    on((subj.SubjectID = cls.SubjectID))) 
    join categories cat 
    on((cat.CategoryID = subj.CategoryID))) 
    where ((cat.CategoryDescription = 'Art') 
    and (schd.Grade >= 85))) as studart
 
 join (  
 
 select distinct sched.StudentID AS StudentID 
 from (((student_schedules sched
 join classes clss 
 on((clss.ClassID = sched.ClassID))) 
 join subjects subjct 
 on((subjct.SubjectID = clss.SubjectID))) 
 join categories catg 
 on((catg.CategoryID = subjct.CategoryID))) 
 where ((catg.CategoryDescription like '%Computer%') 
 and (sched.Grade >= 85))) as studcs
 
 on(studart.StudentID = studcs.StudentID) 

; 
/*
CREATE
 ALGORITHM=UNDEFINED 
 DEFINER=`root`@`localhost` 
 SQL SECURITY DEFINER VIEW `ch08_good_art_cs_students` AS 

 select `studart`.`StudFullName` AS `StudFullName` 
 from (`ch08_good_art_students` `studart` 
 join `ch08_good_cs_students` `studcs` 
 on((`studart`.`StudentID` = `studcs`.`StudentID`)));


CREATE 
ALGORITHM=UNDEFINED 
DEFINER=`root`@`localhost` 
SQL SECURITY DEFINER VIEW `ch08_good_art_students` AS

 select distinct `students`.`StudentID` AS `StudentID`,
 concat(`students`.`StudLastName`,', ',`students`.`StudFirstName`) 
	AS `StudFullName` 
    from ((((`students` 
    join `student_schedules` 
	on((`students`.`StudentID` = `student_schedules`.`StudentID`))) 
    join `classes` 
    on((`classes`.`ClassID` = `student_schedules`.`ClassID`))) 
    join `subjects` 
    on((`subjects`.`SubjectID` = `classes`.`SubjectID`))) 
    join `categories` 
    on((`categories`.`CategoryID` = `subjects`.`CategoryID`))) 
    where ((`categories`.`CategoryDescription` = 'Art') 
    and (`student_schedules`.`Grade` >= 85));




CREATE 
ALGORITHM=UNDEFINED 
DEFINER=`root`@`localhost` 
SQL SECURITY DEFINER VIEW `ch08_good_cs_students` AS

 select distinct `student_schedules`.`StudentID` AS `StudentID` 
 from (((`student_schedules` 
 join `classes` 
 on((`classes`.`ClassID` = `student_schedules`.`ClassID`))) 
 join `subjects` 
 on((`subjects`.`SubjectID` = `classes`.`SubjectID`))) 
 join `categories` 
 on((`categories`.`CategoryID` = `subjects`.`CategoryID`))) 
 where ((`categories`.`CategoryDescription` like '%Computer%') 
 and (`student_schedules`.`Grade` >= 85));

*/