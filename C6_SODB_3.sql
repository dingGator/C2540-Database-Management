use salesordersexample;

select vendName,
		vendwebpage
		
from vendors
where (vendwebpage is null)
 order by vendName
;
/*  
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `ch06_vendors_with_no_website` AS

    SELECT 
        `vendors`.`VendName` AS `VendName`,
        `vendors`.`VendWebPage` AS `VendWebPage`
    FROM
        `vendors`
    WHERE
        ISNULL(`vendors`.`VendWebPage`)
    ORDER BY `vendors`.`VendName`;
*/