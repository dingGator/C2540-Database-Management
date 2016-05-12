use salesordersexample;
select *
from employees
;
/*
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `ch04_employee_information` AS

    SELECT 
        `employees`.`EmployeeID` AS `EmployeeID`,
        `employees`.`EmpFirstName` AS `EmpFirstName`,
        `employees`.`EmpLastName` AS `EmpLastName`,
        `employees`.`EmpStreetAddress` AS `EmpStreetAddress`,
        `employees`.`EmpCity` AS `EmpCity`,
        `employees`.`EmpState` AS `EmpState`,
        `employees`.`EmpZipCode` AS `EmpZipCode`,
        `employees`.`EmpAreaCode` AS `EmpAreaCode`,
        `employees`.`EmpPhoneNumber` AS `EmpPhoneNumber`,
        `employees`.`EmpBirthDate` AS `EmpBirthDate`
    FROM
        `employees`;
*/