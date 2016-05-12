use salesordersexample;
select 	prod.productnumber,
		prod.productname,
        (select max(ord.orderdate)
        from (orders ord 
				join
				order_details ordet
				on((ord.ordernumber = ordet.ordernumber)))) as lastorder
from products prod

;

/*

CREATE
 ALGORITHM=UNDEFINED 
 DEFINER=`root`@`localhost` 
 SQL SECURITY DEFINER 
 VIEW `salesordersexample`.`ch11_products_last_date` AS 
 
 select
	`salesordersexample`.`products`.`ProductNumber` 
		AS `ProductNumber`,
	`salesordersexample`.`products`.`ProductName` 
		AS `ProductName`,
	(select max(`salesordersexample`.`orders`.`OrderDate`) 
		from 
		(`salesordersexample`.`orders` 
			join `salesordersexample`.`order_details` 
            on((`salesordersexample`.`orders`.`OrderNumber` 
            = `salesordersexample`.`order_details`.`OrderNumber`))) 
         where (`salesordersexample`.`order_details`.`ProductNumber` 
            = `salesordersexample`.`products`.`ProductNumber`)) 
				AS `LastOrder` 
from `salesordersexample`.`products`;
*/