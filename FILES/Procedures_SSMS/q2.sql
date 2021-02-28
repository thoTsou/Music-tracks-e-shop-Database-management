

CREATE PROCEDURE q2
(@FIRST DATETIME , @SECOND DATETIME)
AS
BEGIN

Select DISTINCT top 10 Track.TrackId , count(*) as num_of_sells , Track.Name
from Track,InvoiceLine,Invoice
where InvoiceLine.TrackId = Track.TrackId AND InvoiceLine.InvoiceId=Invoice.InvoiceId AND Invoice.InvoiceDate 
BETWEEN @FIRST AND @SECOND
group by Track.TrackId , Track.Name
order by num_of_sells DESC , Track.Name

END

