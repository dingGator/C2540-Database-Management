use salesordersexample;
select vendcity as 'vendor city',
		vendname as 'vendor name'
from vendors 
order by vendcity asc
;/*
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `ch04_vendor_locations` AS
   
   SELECT 
        `vendors`.`VendCity` AS `VendCity`,
        `vendors`.`VendName` AS `VendName`
    FROM
        `vendors`
    ORDER BY `vendors`.`VendCity`;
*/