use salesordersexample;

select 
	cust.custFirstName ||' ' ||	cust.custLastName as employee_Name,
    empl.empFirstName || ' ' || empl.empLastName as customer_Name 
    
from customers cust, employees empl  
where (cust.custLastName = empl.empLastName)
    

; 



/*

CREATE 
ALGORITHM=UNDEFINED 
DEFINER=`root`@`localhost` 
SQL SECURITY DEFINER 
VIEW `ch08_customers_employees_same_lastname` AS 
	select concat(`customers`.`CustFirstName`,' ',`customers`.`CustLastName`) 
			AS `CustFullName`,
		concat(`employees`.`EmpFirstName`,' ',`employees`.`EmpLastName`) 
			AS `EmpFullName` 
    from (`customers` 
		join `employees` 
		on((`customers`.`CustLastName` = `employees`.`EmpLastName`)));
*/
	