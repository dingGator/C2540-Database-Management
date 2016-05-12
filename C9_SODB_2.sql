use salesordersexample;
select cust.customerid,
		cust.custfirstname,
        cust.custlastname,
		cust.custzipcode
from 
(	customers cust
		left join
	employees emp 
		on (cust.CustZipCode = emp.EmpZipCode))
where isnull(emp.EmployeeID)
;
/*
select * from ch09_customers_no_rep_same_zip;

CREATE 
ALGORITHM=UNDEFINED 
DEFINER=`root`@`localhost` 
SQL SECURITY DEFINER 
VIEW `salesordersexample`.`ch09_customers_no_rep_same_zip` AS

 select 
	`salesordersexample`.`customers`.`CustomerID` 
		AS `CustomerID`,
	`salesordersexample`.`customers`.`CustFirstName` 
		AS `CustFirstName`,
	`salesordersexample`.`customers`.`CustLastName` 
		AS `CustLastName`,
	`salesordersexample`.`customers`.`CustZipCode` 
		AS `CustZipCode` 
from 
(`salesordersexample`.`customers` 
left join `salesordersexample`.`employees` 
	on((`salesordersexample`.`customers`.`CustZipCode` 
		= `salesordersexample`.`employees`.`EmpZipCode`))) 
        where isnull(`salesordersexample`.`employees`.`EmployeeID`);

*/