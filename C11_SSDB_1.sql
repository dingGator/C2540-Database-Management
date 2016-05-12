use schoolschedulingexample;
select sta.staffid,
	(select count(0)
    from faculty_classes cla
    where ( cla.staffid = sta.staffid))
    
from staff sta
;

/*
CREATE 
ALGORITHM=UNDEFINED 
DEFINER=`root`@`localhost` 
SQL SECURITY DEFINER 
VIEW `ch11_staff_class_count` AS 

select
 `staff`.`StaffID` 
	AS `StaffID`,
`staff`.`StfFirstName` 
	AS `StfFirstName`,
`staff`.`StfLastname` 
	AS `StfLastname`,
(
select count(0) 
from `faculty_classes` 
where 
(`faculty_classes`.`StaffID` 
	= `staff`.`StaffID`)) 
	AS `ClassCount` 
from `staff`;

*/