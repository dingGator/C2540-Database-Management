use salesordersexample;

select	distinct
	empl.EmpFirstName || ' ' || empl.EmpLastName as EmployeeFullName,
	cust.CustFirstName || ' ' || cust.CustLastName as CustomerFullName
from ((employees empl join orders ord
	on((empl.employeeID = ord.employeeID)))
	join customers cust
    on(( cust.customerID = ord.customerID)))
; 

/*
CREATE 
	ALGORITHM=UNDEFINED 
    DEFINER=`root`@`localhost` 
    SQL SECURITY DEFINER 
VIEW `ch08_employees_and_customers` AS 
	select distinct concat(`employees`.`EmpFirstName`,' ',`employees`.`EmpLastName`) 
			AS `EmpFullName`,
        concat(`customers`.`CustFirstName`,' ',`customers`.`CustLastName`) 
			AS `CustFullName` 
        from ((`employees` join `orders` 
			on((`employees`.`EmployeeID` = `orders`.`EmployeeID`))) 
            join `customers` 
            on((`customers`.`CustomerID` = `orders`.`CustomerID`)));

order by OrderDate
*/