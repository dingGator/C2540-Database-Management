use salesordersexample;

select productName,
		retailprice
from products
where (retailprice >= 125.00 )
order by productName asc;
/*    
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `ch06_products_priced_over_125` AS

    SELECT 
        `products`.`ProductName` AS `ProductName`,
        `products`.`RetailPrice` AS `RetailPrice`
    FROM
        `products`
    WHERE
        (`products`.`RetailPrice` >= 125)
    ORDER BY `products`.`ProductName`;


*/