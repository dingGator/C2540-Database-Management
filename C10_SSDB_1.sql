use schoolschedulingexample;
select 'student' as rowid,
		std.studfirstname as firstname,
		std.studlastname as lastname,
        
        std.studzipcode
from
students std

union

select 'staff' as rowid,
		stf.stffirstname,
        stf.stflastname,
		stf.stfzipcode
from
staff stf

order by studzipcode

;

/*
CREATE 
ALGORITHM=UNDEFINED 
DEFINER=`root`@`localhost` 
SQL SECURITY DEFINER 
VIEW `ch10_student_staff_mailing_list` AS 

select 
	concat(`students`.`StudFirstName`,' ',`students`.`StudLastName`) 
			AS `Name`,
        `students`.`StudStreetAddress` 
			AS `StudStreetAddress`,
		`students`.`StudCity` 
			AS `StudCity`,
		`students`.`StudState` 
            AS `StudState`,
		`students`.`StudZipCode` 
			AS `StudZipCode` 
		from `students` 
union 

select 
	concat(`staff`.`StfFirstName`,' ',`staff`.`StfLastname`) 
		AS `Name`,
	`staff`.`StfStreetAddress` 
		AS `StfStreetAddress`,
	`staff`.`StfCity` 
		AS `StfCity`,
	`staff`.`StfState` 
		AS `StfState`,
	`staff`.`StfZipCode` 
		AS `StfZipCode` 
	from `staff` 
    
    order by `StudZipCode`;


*/