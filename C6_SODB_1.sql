use salesordersexample;

select vendName,
	vendcity
from vendors
where (vendcity in ('Ballard', 'bellevue', 'redmond'))
order by vendname;
    

/*
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `ch06_ballard_bellevue_redmond_vendors` AS
  
 SELECT 
        `vendors`.`VendName` AS `VendName`,
        `vendors`.`VendCity` AS `VendCity`
    FROM
        `vendors`
    WHERE
        (`vendors`.`VendCity` IN ('Ballard' , 'Bellevue', 'Redmond'))
    ORDER BY `vendors`.`VendName`;
*/