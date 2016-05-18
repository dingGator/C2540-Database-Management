use salesordersexample;

select 
	cust.custFirstName ||' ' ||	cust.custLastName as employee_Name,
    empl.empFirstName || ' ' || empl.empLastName as customer_Name 
    
from (customers cust join employees empl  
 on (cust.custLastName = empl.empLastName))
    

; 
/*

select concat(`customers`.`CustFirstName`,' ',`customers`.`CustLastName`) 
			AS `CustFullName`,
		concat(`employees`.`EmpFirstName`,' ',`employees`.`EmpLastName`) 
			AS `EmpFullName` 
    from (`customers` 
		join `employees` 
		on((`customers`.`CustLastName` = `employees`.`EmpLastName`)));
        
*/