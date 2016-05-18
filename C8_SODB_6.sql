use salesordersexample;

select 
	cust.custFirstName ||' ' ||	cust.custLastName as employee_Name,
    empl.empFirstName || ' ' || empl.empLastName as customer_Name,
    empl.empCity as same_City
    
from (customers cust join employees empl  
 on (cust.custCity = empl.empCity))
    

; 
/*

CREATE 
	ALGORITHM=UNDEFINED 
	DEFINER=`root`@`localhost` 
	SQL SECURITY DEFINER 
VIEW `ch08_customers_employees_same_city` AS 
	
    select `customers`.`CustFirstName` AS `CustFirstName`,
			`customers`.`CustLastName` AS `CustLastName`,
			`employees`.`EmpFirstName` AS `EmpFirstName`,
			`employees`.`EmpLastName` AS `EmpLastName`,
			`employees`.`EmpCity` AS `EmpCity` 
    from (`customers` 
		join `employees` 
		on((`customers`.`CustCity` = `employees`.`EmpCity`)));
        
*/