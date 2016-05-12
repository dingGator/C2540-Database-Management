use salesordersexample;

select  prod.productname,
        cust.customerid as customerid,
        'customer' as rowid
from
(((
customers cust
join
orders ord
on((ord.customerid = cust.customerid)))
join
order_details ordet
on ((ordet.ordernumber = ord.ordernumber)))
join
products prod
on((prod.productnumber= ordet.productnumber)))
where (prod.ProductName 
    like '%helmet%') 

union

select  prod2.productname,
       vend.vendorid as vendorid,
       'vendor' as rowid
from
((vendors   vend
join
product_vendors prodvend
 on((vend.vendorid = prodvend.vendorid)))
join
products  prod2
on(( prodvend.productnumber = prod2.productnumber)))

where (prod2.ProductName like '%helmet%') 
    
;
/*
select * from ch10_customer_helmets_vendor_helmets;




/*
CREATE 
ALGORITHM=UNDEFINED 
DEFINER=`root`@`localhost` 
SQL SECURITY DEFINER 
VIEW `salesordersexample`.`ch10_customer_helmets_vendor_helmets` AS 

select 
concat(`salesordersexample`.`customers`.`CustLastName`,
	', ',`salesordersexample`.`customers`.`CustFirstName`) 
		AS `FullName`,
`salesordersexample`.`products`.`ProductName` 
	AS `ProductName`,
'Customer' 
	AS `RowID` 
from 
(((`salesordersexample`.`customers` 
	join `salesordersexample`.`orders` 
		on((`salesordersexample`.`customers`.`CustomerID` 
        = `salesordersexample`.`orders`.`CustomerID`))) 
	join `salesordersexample`.`order_details` 
		on((`salesordersexample`.`orders`.`OrderNumber` 
		= `salesordersexample`.`order_details`.`OrderNumber`))) 
	join `salesordersexample`.`products` 
		on((`salesordersexample`.`products`.`ProductNumber` 
		= `salesordersexample`.`order_details`.`ProductNumber`))) 
	where (`salesordersexample`.`products`.`ProductName` 
    like '%helmet%') 
    
union 

select 
`salesordersexample`.`vendors`.`VendName` 
	AS `VendName`,
`salesordersexample`.`products`.`ProductName` 
	AS `ProductName`,
'Vendor' 
	AS `RowID` 
from 
((`salesordersexample`.`vendors` 
	join `salesordersexample`.`product_vendors` 
		on((`salesordersexample`.`vendors`.`VendorID` 
        = `salesordersexample`.`product_vendors`.`VendorID`))) 
	join `salesordersexample`.`products` 
		on((`salesordersexample`.`products`.`ProductNumber` 
		= `salesordersexample`.`product_vendors`.`ProductNumber`))) 

where (`salesordersexample`.`products`.`ProductName` 
	like '%helmet%');

*/