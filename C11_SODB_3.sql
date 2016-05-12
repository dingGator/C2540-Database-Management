use salesordersexample;
select 	
	prod.productnumber,
    prod.productname
from products prod
where (not 
(prod.productnumber
in
( select ordet.productnumber
	from 
    order_details ordet)))
     
;
/*
 select * from ch11_products_not_ordered;
 
/*
CREATE 
ALGORITHM=UNDEFINED 
DEFINER=`root`@`localhost` 
SQL SECURITY DEFINER 
VIEW `salesordersexample`.`ch11_products_not_ordered` AS 

select 
	`salesordersexample`.`products`.`ProductName` 
		AS `ProductName` 
from 
`salesordersexample`.`products` 
where 
(
not	
(`salesordersexample`.`products`.`ProductNumber` 

in (
select
 `salesordersexample`.`order_details`.`ProductNumber` 
 from `salesordersexample`.`order_details`)));

*/