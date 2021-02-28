

CREATE PROCEDURE q4
(@FIRST DATETIME , @SECOND DATETIME)
AS
BEGIN


Select Invoice.CustomerId ,Customer.Phone , Customer.Fax , Customer.Email ,  sum(Total) as total_charge_per_customer
from Invoice , Customer
where Invoice.CustomerId = Customer.CustomerId AND Invoice.InvoiceDate 
BETWEEN @FIRST AND @SECOND
group by Invoice.CustomerId , Customer.Phone, Customer.Fax , Customer.Email 
order by total_charge_per_customer DESC , Invoice.CustomerId

END

EXEC q4 '2009-01-01 00:00:00.000' ,'2013-12-22 00:00:00.000'