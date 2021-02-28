
CREATE PROCEDURE q1
(@NUM INT , @FIRST DATETIME , @SECOND DATETIME)
AS
BEGIN

Select DISTINCT top (@NUM) Artist.Name as Artist , subq1.number_of_sales
from Artist,Album,Track,
						(Select InvoiceLine.TrackId , count(*) as number_of_sales
						from InvoiceLine,Invoice
						where InvoiceLine.InvoiceId = Invoice.InvoiceId AND Invoice.InvoiceDate 
						BETWEEN @FIRST AND @SECOND
						group by InvoiceLine.TrackId )subq1
where Track.TrackId = subq1.TrackId  AND Album.AlbumId = Track.AlbumId AND Artist.ArtistId = Album.ArtistId
order by subq1.number_of_sales  DESC , Artist

END