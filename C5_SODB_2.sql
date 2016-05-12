use salesordersexample;

select CustomerID, 
	orderdate, 
    OrderNumber
from orders
order by customerId asc, orderdate desc, ordernumber asc
;
/*
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `ch05_orders_by_customer_and_date` AS

    SELECT 
        `orders`.`CustomerID` AS `CustomerID`,
        `orders`.`OrderDate` AS `OrderDate`,
        `orders`.`OrderNumber` AS `OrderNumber`
    FROM
        `orders`
    ORDER BY `orders`.`CustomerID` , `orders`.`OrderDate` DESC , `orders`.`OrderNumber`;
*/