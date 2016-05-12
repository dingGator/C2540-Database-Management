use salesordersexample;

select 
	vend.VendorID,  
	vend.VendName,
    prodV.ProductNumber, 
    prod.ProductName,
    prodV.WholesalePrice
from (vendors vend	
	join product_vendors prodV
	on(vend.VendorID = prodV.VendorID)
    join products prod
	on (prod.ProductNumber = prodV.ProductNumber))
    where (prodV.WholesalePrice < 100.00)
    

; 

/*
CREATE 
	ALGORITHM=UNDEFINED 
    DEFINER=`root`@`localhost` 
    SQL SECURITY DEFINER 
VIEW `ch08_vendors_and_products_less_than_100` AS 
	select `vendors`.`VendName` AS `VendName`,
    `products`.`ProductName` AS `ProductName`,
    `product_vendors`.`WholesalePrice` AS `WholesalePrice` 
    from ((`vendors` 
		join `product_vendors` 
			on((`vendors`.`VendorID` = `product_vendors`.`VendorID`))) 
        join `products`
			on((`products`.`ProductNumber` = `product_vendors`.`ProductNumber`))) 
	where (`product_vendors`.`WholesalePrice` < 100);
*/