use salesordersexample;

select productNumber, 
	WholesalePrice, 
    WholesalePrice -(0.05* WholesalePrice) as NewPrice
from product_vendors
;
/*
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `ch05_adjusted_wholesale_prices` AS
 
 SELECT 
        `product_vendors`.`ProductNumber` AS `ProductNumber`,
        `product_vendors`.`WholesalePrice` AS `WholesalePrice`,
        (`product_vendors`.`WholesalePrice` - (`product_vendors`.`WholesalePrice` * 0.05)) AS `NewPrice`
    FROM
        `product_vendors`;
*/