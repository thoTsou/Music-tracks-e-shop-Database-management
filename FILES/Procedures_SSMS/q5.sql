

CREATE PROCEDURE q5_1
(@FIRST DATETIME , @SECOND DATETIME)
AS
BEGIN

Select Invoice.InvoiceId , Customer.FirstName as Cfn , Customer.LastName as Cln, Employee.FirstName as Efn , 
Employee.LastName Eln
from Invoice,Customer,Employee
where Invoice.CustomerId=Customer.CustomerId AND Customer.SupportRepId = Employee.EmployeeId 
AND Invoice.InvoiceDate BETWEEN @FIRST AND @SECOND 
order by Invoice.InvoiceId

END

EXEC q5_1 '2009-01-01 00:00:00.000' , '2013-12-22 00:00:00.000'




CREATE PROCEDURE q5_2
( @En NVARCHAR(30),@Es NVARCHAR(30) )
AS
BEGIN

Select Invoice.InvoiceId , Customer.FirstName as Cfn , Customer.LastName as Cln, Employee.FirstName as Efn , 
Employee.LastName Eln
from Invoice,Customer,Employee
where Invoice.CustomerId=Customer.CustomerId AND Customer.SupportRepId = Employee.EmployeeId 
AND  Employee.FirstName = @En AND Employee.LastName = @Es 
order by Invoice.InvoiceId

END

EXEC q5_2 'Steve','Johnson'


CREATE PROCEDURE q5_3
( @Cn NVARCHAR(30),@Cs NVARCHAR(30) )
AS
BEGIN

Select Invoice.InvoiceId , Customer.FirstName as Cfn , Customer.LastName as Cln, Employee.FirstName as Efn , 
Employee.LastName Eln
from Invoice,Customer,Employee
where Invoice.CustomerId=Customer.CustomerId AND Customer.SupportRepId = Employee.EmployeeId 
AND  Customer.FirstName = @Cn AND Customer.LastName = @Cs 
order by Invoice.InvoiceId

END


EXEC q5_3 'Jack','Smith'







