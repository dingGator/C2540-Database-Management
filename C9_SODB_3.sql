use salesordersexample;
select 
		
        prod.productnumber,
		prod.productname,
        od.orderdate
from 
	(products prod
    left join
    (select distinct
		ords.orderdate,
        det.productnumber
        from 
        (orders ords
			join
        order_details det
			on(ords.ordernumber = det.ordernumber))) od
    on( od.productnumber = prod.productNumber))
    ;
    
    /*
    
CREATE 
ALGORITHM=UNDEFINED 
DEFINER=`root`@`localhost` 
SQL SECURITY DEFINER 
VIEW `salesordersexample`.`ch09_all_products_any_order_dates` AS 

select 
	`salesordersexample`.`products`.`ProductNumber` 
		AS `ProductNumber`,
	`salesordersexample`.`products`.`ProductName` 
		AS `ProductName`,
	`od`.`OrderDate` 
		AS `OrderDate` 
from (`salesordersexample`.`products` 
	left join `salesordersexample`.`ch09_all_product_order_dates` `od` 
    on((`salesordersexample`.`products`.`ProductNumber` = `od`.`ProductNumber`)));


CREATE 
ALGORITHM=UNDEFINED 
DEFINER=`root`@`localhost` 
SQL SECURITY DEFINER 
VIEW `salesordersexample`.`ch09_all_product_order_dates` AS 

select 
	distinct `salesordersexample`.`order_details`.`ProductNumber` 
		AS `ProductNumber`,
	`salesordersexample`.`orders`.`OrderDate` 
		AS `OrderDate` 
from (`salesordersexample`.`orders` 
	join `salesordersexample`.`order_details` 
    on((`salesordersexample`.`orders`.`OrderNumber` 
    = `salesordersexample`.`order_details`.`OrderNumber`)));

  */