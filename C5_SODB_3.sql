use salesordersexample;
/*
select VendName,
	VendStreetAddress ||' '|| VendCity|| ' '|| VendState || ' ' || vendzipcode as VendCompleteAddress1, 
   concat(VendStreetAddress ,' ',VendCity, ' ',VendState , ' ' , vendzipcode) as VendCompleteAddress2,
  VendPhoneNumber
from vendors
order by VendName asc
;

CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `ch05_vendor_addresses` AS
*/
    SELECT 
        `vendors`.`VendName` AS `VendName`,
        CONCAT(`vendors`.`VendStreetAddress`,
                ', ',
                `vendors`.`VendCity`,
                '  ',
                `vendors`.`VendState`,
                '  ',
                `vendors`.`VendZipCode`) AS `VendCompleteAddress`,
        `vendors`.`VendPhoneNumber` AS `VendPhoneNumber`
    FROM
        `vendors`
    ORDER BY `vendors`.`VendName`;
