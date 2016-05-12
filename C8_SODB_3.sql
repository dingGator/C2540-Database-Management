use salesordersexample;

select 
	ord.OrderNumber,  
	ord.OrderDate,
    ordD.ProductNumber,
    prod.ProductName,
	ordD.QuantityOrdered,     
	ordD.QuotedPrice,
    (ordD.QuantityOrdered * ordD.QuotedPrice) as Amount_Owed
    
from ((orders ord
join order_details ordD
on(ord.orderNumber = ordD.orderNumber))
join
products prod
on (prod.ProductNumber = ordD.ProductNumber))


order by ord.OrderNumber

; 

/*
CREATE 
	ALGORITHM=UNDEFINED 
	DEFINER=`root`@`localhost` 
	SQL SECURITY DEFINER 
VIEW `ch08_orders_with_products` AS 
	
	select `orders`.`OrderNumber` AS `OrderNo`,
        `orders`.`OrderDate` AS `OrderDate`,
        `order_details`.`ProductNumber` AS `ProductNo`,
        `products`.`ProductName` AS `Product`,
        `order_details`.`QuotedPrice` AS `Price`,
        `order_details`.`QuantityOrdered` AS `Qty`,
        (`order_details`.`QuotedPrice` * `order_details`.`QuantityOrdered`)
			AS `AmountOwed` 
	from ((`orders` join `order_details` 
		on((`orders`.`OrderNumber` = `order_details`.`OrderNumber`))) 
        join `products` 
        on((`products`.`ProductNumber` = `order_details`.`ProductNumber`))) 
        order by `orders`.`OrderNumber`;
*/